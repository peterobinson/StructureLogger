namespace SerialConsole
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tbxConsole = new System.Windows.Forms.TextBox();
            this.listSerialPorts = new System.Windows.Forms.ComboBox();
            this.btnRefreshComPorts = new System.Windows.Forms.Button();
            this.btnConnect = new System.Windows.Forms.Button();
            this.cmdInput = new System.Windows.Forms.TextBox();
            this.btnSend = new System.Windows.Forms.Button();
            this.tbxInput = new System.Windows.Forms.TextBox();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.chkAppendNewline = new System.Windows.Forms.CheckBox();
            this.btnSendAT = new System.Windows.Forms.Button();
            this.btnSendText = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tbxConsole
            // 
            this.tbxConsole.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbxConsole.Location = new System.Drawing.Point(3, 3);
            this.tbxConsole.Multiline = true;
            this.tbxConsole.Name = "tbxConsole";
            this.tbxConsole.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbxConsole.Size = new System.Drawing.Size(331, 359);
            this.tbxConsole.TabIndex = 0;
            // 
            // listSerialPorts
            // 
            this.listSerialPorts.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.listSerialPorts.FormattingEnabled = true;
            this.listSerialPorts.Location = new System.Drawing.Point(44, 18);
            this.listSerialPorts.Name = "listSerialPorts";
            this.listSerialPorts.Size = new System.Drawing.Size(121, 21);
            this.listSerialPorts.TabIndex = 1;
            // 
            // btnRefreshComPorts
            // 
            this.btnRefreshComPorts.Image = global::SerialConsole.Properties.Resources._112_RefreshArrow_Green_16x16_72;
            this.btnRefreshComPorts.Location = new System.Drawing.Point(12, 16);
            this.btnRefreshComPorts.Name = "btnRefreshComPorts";
            this.btnRefreshComPorts.Size = new System.Drawing.Size(26, 23);
            this.btnRefreshComPorts.TabIndex = 2;
            this.btnRefreshComPorts.UseVisualStyleBackColor = true;
            this.btnRefreshComPorts.Click += new System.EventHandler(this.btnRefreshComPorts_Click);
            // 
            // btnConnect
            // 
            this.btnConnect.Enabled = false;
            this.btnConnect.Location = new System.Drawing.Point(171, 16);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(75, 23);
            this.btnConnect.TabIndex = 3;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // cmdInput
            // 
            this.cmdInput.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cmdInput.Location = new System.Drawing.Point(13, 397);
            this.cmdInput.Multiline = true;
            this.cmdInput.Name = "cmdInput";
            this.cmdInput.Size = new System.Drawing.Size(551, 41);
            this.cmdInput.TabIndex = 4;
            this.cmdInput.KeyUp += new System.Windows.Forms.KeyEventHandler(this.cmdInput_KeyUp);
            // 
            // btnSend
            // 
            this.btnSend.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnSend.Location = new System.Drawing.Point(570, 395);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(116, 23);
            this.btnSend.TabIndex = 5;
            this.btnSend.Text = "Send";
            this.btnSend.UseVisualStyleBackColor = true;
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // tbxInput
            // 
            this.tbxInput.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbxInput.Location = new System.Drawing.Point(3, 3);
            this.tbxInput.Multiline = true;
            this.tbxInput.Name = "tbxInput";
            this.tbxInput.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbxInput.Size = new System.Drawing.Size(327, 343);
            this.tbxInput.TabIndex = 6;
            // 
            // splitContainer1
            // 
            this.splitContainer1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.splitContainer1.IsSplitterFixed = true;
            this.splitContainer1.Location = new System.Drawing.Point(13, 45);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.tbxConsole);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.tbxInput);
            this.splitContainer1.Size = new System.Drawing.Size(674, 344);
            this.splitContainer1.SplitterDistance = 337;
            this.splitContainer1.TabIndex = 7;
            // 
            // chkAppendNewline
            // 
            this.chkAppendNewline.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.chkAppendNewline.AutoSize = true;
            this.chkAppendNewline.Checked = true;
            this.chkAppendNewline.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkAppendNewline.Location = new System.Drawing.Point(570, 421);
            this.chkAppendNewline.Name = "chkAppendNewline";
            this.chkAppendNewline.Size = new System.Drawing.Size(104, 17);
            this.chkAppendNewline.TabIndex = 8;
            this.chkAppendNewline.Text = "Append Newline";
            this.chkAppendNewline.UseVisualStyleBackColor = true;
            // 
            // btnSendAT
            // 
            this.btnSendAT.Location = new System.Drawing.Point(357, 16);
            this.btnSendAT.Name = "btnSendAT";
            this.btnSendAT.Size = new System.Drawing.Size(75, 23);
            this.btnSendAT.TabIndex = 9;
            this.btnSendAT.Text = "Send AT";
            this.btnSendAT.UseVisualStyleBackColor = true;
            this.btnSendAT.Click += new System.EventHandler(this.btnSendAT_Click);
            // 
            // btnSendText
            // 
            this.btnSendText.Location = new System.Drawing.Point(438, 16);
            this.btnSendText.Name = "btnSendText";
            this.btnSendText.Size = new System.Drawing.Size(75, 23);
            this.btnSendText.TabIndex = 10;
            this.btnSendText.Text = "Send Text";
            this.btnSendText.UseVisualStyleBackColor = true;
            this.btnSendText.Click += new System.EventHandler(this.btnSendText_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(698, 448);
            this.Controls.Add(this.btnSendText);
            this.Controls.Add(this.btnSendAT);
            this.Controls.Add(this.chkAppendNewline);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.btnSend);
            this.Controls.Add(this.cmdInput);
            this.Controls.Add(this.btnConnect);
            this.Controls.Add(this.btnRefreshComPorts);
            this.Controls.Add(this.listSerialPorts);
            this.Name = "Form1";
            this.Text = "Form1";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Form1_FormClosed);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbxConsole;
        private System.Windows.Forms.ComboBox listSerialPorts;
        private System.Windows.Forms.Button btnRefreshComPorts;
        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.TextBox cmdInput;
        private System.Windows.Forms.Button btnSend;
        private System.Windows.Forms.TextBox tbxInput;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.CheckBox chkAppendNewline;
        private System.Windows.Forms.Button btnSendAT;
        private System.Windows.Forms.Button btnSendText;
    }
}

