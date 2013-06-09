using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SerialConsole
{
    public partial class Form1 : Form
    {

        private SerialPort _serialPort = new SerialPort();

        enum LinePrefixes { Debug, Input, Output, None};

        private IDictionary<LinePrefixes, String> linePrefTranslator = new Dictionary<LinePrefixes, String>
        {
            { LinePrefixes.Debug, "Debug: " },
            { LinePrefixes.Input, "RX: " },
            { LinePrefixes.Output, "> "},
            { LinePrefixes.None,""}

        };

        private volatile bool _continue;
        Thread readThread;

        private List<string> _commandHistory = new List<string>();
        private int _historyPosition = 0;

        public Form1()
        {
            InitializeComponent();
        }

        private void btnRefreshComPorts_Click(object sender, EventArgs e)
        {
            listSerialPorts.Items.AddRange(SerialPort.GetPortNames());
            btnConnect.Enabled = true;
        }

        private void btnConnect_Click(object sender, EventArgs e)
        {
            if (listSerialPorts.SelectedItem == null)
            {
                return;
            }

            this._serialPort.PortName = listSerialPorts.SelectedItem.ToString();
            this._serialPort.ReadTimeout = 500;
            this._serialPort.WriteTimeout = 500;
            this._serialPort.BaudRate = 9600; // 115200;
            this._serialPort.Open();

            _continue = true;
            readThread = new Thread(Read);
            readThread.Start();

            debugWrite("Connected to " + this._serialPort.PortName);

      //      this.listSerialPorts.Enabled = false;
      //      this.btnConnect.Text = "Disconnect";
/*
            while (true)
            {
                cmdInput.Text = RandomString(24);
                sendCommand();
                Thread.Sleep(20);
                Application.DoEvents();
            }
 */
        }

        private static Random random = new Random((int)DateTime.Now.Ticks);//thanks to McAden
        private string RandomString(int size)
        {
            StringBuilder builder = new StringBuilder();
            char ch;
            for (int i = 0; i < size; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
                builder.Append(ch);
            }

            return builder.ToString();
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            sendCommand();
        }

        private void sendCommand()
        {
            string cmd = trimNewline(cmdInput.Text);

            if (cmd == "")
            {
                return;
            }

            cmdInput.Clear();
            
            updateHistory(cmd);

            if (chkAppendNewline.Checked)
            {
                _serialPort.Write(cmd + '\r');
            }
            else
            {
                _serialPort.Write(cmd);
            }

            consoleWriteLine(cmd + " (" + ByteFormatting.ByteToHex(ByteFormatting.GetBytes(cmd)).Replace("00","") + ")" + Environment.NewLine, LinePrefixes.Output);
        }

        private void consoleWriteLine(string line)
        {
            consoleWriteLine(line, LinePrefixes.Debug);
        }

        private void debugWrite(string line)
        {
            consoleWriteLine(line + Environment.NewLine, LinePrefixes.Debug);
        }

        private void consoleWriteLine(string line, LinePrefixes prefix)
        {

            //line = removeTrailingNewline(line);

            tbxConsole.Text += linePrefTranslator[prefix] + line;
           
            this.tbxConsole.SelectionStart = tbxConsole.Text.Length;
            this.tbxConsole.ScrollToCaret();
        }

        private string trimNewline(string input)
        {
            return input.ToString().Trim('\r', '\n');
        }

        private void printInputData(string data)
        {
            tbxInput.Text += data;

            Console.WriteLine(data);

            this.tbxInput.SelectionStart = tbxInput.Text.Length;
            this.tbxInput.ScrollToCaret();
        }

        private string _convertedBuffer = "";

        private void processInputData(byte[] data)
        {
          //  _convertedBuffer += System.Text.Encoding.UTF8.GetString(data);
            //printInputData(System.Text.Encoding.UTF8.GetString(data));
            string hex = ByteFormatting.ByteToHex(data);

            byte lastByte = 0x00;

            foreach (byte d in data)
            {
                printInputData(ByteFormatting.ByteToHex(d) + " ");

                if (d == 0x0A && lastByte == 0x0D)
                {
                    printInputData(" > " + _convertedBuffer + Environment.NewLine + Environment.NewLine);
                    _convertedBuffer = "";
                }
                else
                {
                    _convertedBuffer += ((char)d).ToString();
                }
                lastByte = d;
            }

       //     string[] lines = hex.Split(new string[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
       //     printInputData(ByteFormatting.ByteToHex(data, true));
        }



        private void Read()
        {
            int bytesToRead;

            while (_continue)
            {
                bytesToRead = _serialPort.BytesToRead;
                byte[] input = new byte[bytesToRead];

                if (bytesToRead > 0)
                {
                    //string message = _serialPort.ReadExisting();
                    

                    //this.Invoke((MethodInvoker)(() => { processInputData(message); }));

                    _serialPort.Read(input, 0, bytesToRead);
                    this.Invoke((MethodInvoker)(() => { processInputData(input); }));

                }
            }
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            _continue = false;
        }


        private void cmdInput_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && Control.ModifierKeys == Keys.None)
            {
                sendCommand();
            }

            switch (e.KeyCode)
            {
                case Keys.Up:
                    cmdInput.Text = historyBack();
                    cmdInput.SelectionStart = cmdInput.Text.Length;
                    cmdInput.ScrollToCaret();
                break;
                case Keys.Down:
                    cmdInput.Text = historyForward();
                    cmdInput.SelectionStart = cmdInput.Text.Length;
                    cmdInput.ScrollToCaret();
                    break;
                case Keys.Escape:
                    cmdInput.Text = "";
                    _historyPosition = 0;
                    break;

            }
        }

        private void updateHistory(string newEntry)
        {
            if (_commandHistory.Count == 0 || _commandHistory[_commandHistory.Count - 1] != newEntry)
            {
                _commandHistory.Add(newEntry);
            }
            
            _historyPosition = 0;
        }

        private string historyBack()
        {
            if (_commandHistory.Count == 0)
            {
                return cmdInput.Text;
            }
            if (_commandHistory.Count > _historyPosition)
            {
                _historyPosition++;
            }

            return _commandHistory[_commandHistory.Count - _historyPosition];

        }

        private string historyForward()
        {
            if (_historyPosition > 1)
            {
                _historyPosition--;
            }
            
            return _commandHistory[_commandHistory.Count - _historyPosition];
        }

        private void btnSendAT_Click(object sender, EventArgs e)
        {
            _serialPort.Write(new byte[] { 0x41, 0x54, 0x0D }, 0, 3);
        }

        private void btnSendText_Click(object sender, EventArgs e)
        {
            _serialPort.Write(cmdInput.Text);
            _serialPort.Write(new byte[] { 0x1A }, 0, 1);
            cmdInput.Clear();

        }
    
    }
}
