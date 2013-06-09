<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="monitor-parts">
<packages>
<package name="DIP-24">
<pad name="P1" x="-7.62" y="13.97" drill="0.8" shape="square"/>
<pad name="P2" x="-7.62" y="11.43" drill="0.8"/>
<pad name="P3" x="-7.62" y="8.89" drill="0.8"/>
<pad name="P4" x="-7.62" y="6.35" drill="0.8"/>
<pad name="P5" x="-7.62" y="3.81" drill="0.8"/>
<pad name="P6" x="-7.62" y="1.27" drill="0.8"/>
<pad name="P7" x="-7.62" y="-1.27" drill="0.8"/>
<pad name="P8" x="-7.62" y="-3.81" drill="0.8"/>
<pad name="P9" x="-7.62" y="-6.35" drill="0.8"/>
<pad name="P10" x="-7.62" y="-8.89" drill="0.8"/>
<pad name="P11" x="-7.62" y="-11.43" drill="0.8"/>
<pad name="P12" x="-7.62" y="-13.97" drill="0.8"/>
<pad name="P13" x="7.62" y="-13.97" drill="0.8" rot="R90"/>
<pad name="P14" x="7.62" y="-11.43" drill="0.8" rot="R90"/>
<pad name="P15" x="7.62" y="-8.89" drill="0.8" rot="R90"/>
<pad name="P16" x="7.62" y="-6.35" drill="0.8" rot="R90"/>
<pad name="P17" x="7.62" y="-3.81" drill="0.8" rot="R90"/>
<pad name="P18" x="7.62" y="-1.27" drill="0.8" rot="R90"/>
<pad name="P19" x="7.62" y="1.27" drill="0.8" rot="R90"/>
<pad name="P20" x="7.62" y="3.81" drill="0.8" rot="R90"/>
<pad name="P21" x="7.62" y="6.35" drill="0.8" rot="R90"/>
<pad name="P22" x="7.62" y="8.89" drill="0.8" rot="R90"/>
<pad name="P23" x="7.62" y="11.43" drill="0.8" rot="R90"/>
<pad name="P24" x="7.62" y="13.97" drill="0.8" rot="R90"/>
<wire x1="-6.35" y1="15.24" x2="6.35" y2="15.24" width="0.127" layer="21"/>
<wire x1="6.35" y1="15.24" x2="6.35" y2="-15.24" width="0.127" layer="21"/>
<wire x1="6.35" y1="-15.24" x2="-6.35" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-15.24" x2="-6.35" y2="15.24" width="0.127" layer="21"/>
<circle x="-4.445" y="13.335" radius="0.898025" width="0.127" layer="21"/>
<text x="-6.35" y="-17.78" size="1.27" layer="25">&gt;NAME</text>
<text x="1.27" y="-17.78" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="4-BIT-ENCODER">
<pad name="8/" x="-3.81" y="-3.81" drill="0.8"/>
<pad name="4/" x="-1.27" y="-3.81" drill="0.8"/>
<pad name="2/" x="1.27" y="-3.81" drill="0.8"/>
<pad name="1/" x="3.81" y="-3.81" drill="0.8"/>
<pad name="COMMON" x="1.27" y="3.81" drill="0.8"/>
<wire x1="-5.08" y1="5.08" x2="5.08" y2="5.08" width="0.127" layer="21"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-5.08" width="0.127" layer="21"/>
<wire x1="5.08" y1="-5.08" x2="-5.08" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.127" layer="21"/>
<circle x="0" y="0" radius="2.83980625" width="0.127" layer="21"/>
<text x="-5.08" y="5.08" size="1.27" layer="21">&gt;NAME</text>
<text x="-5.08" y="-6.35" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="0805">
<smd name="CATHODE" x="0" y="0" dx="0.762" dy="1.524" layer="1"/>
<smd name="ANODE" x="2.54" y="0" dx="0.762" dy="1.524" layer="1"/>
<wire x1="0" y1="1.27" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-0.635" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.27" x2="3.175" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.175" y2="-1.27" width="0.127" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-0.635" y2="1.27" width="0.127" layer="21"/>
<rectangle x1="0.254" y1="-1.016" x2="2.286" y2="1.016" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="16:1MUX/DEMUX">
<wire x1="-10.16" y1="20.32" x2="7.62" y2="20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="20.32" x2="7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="-10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-22.86" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-10.16" y="22.86" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="Y0" x="10.16" y="17.78" length="short" rot="R180"/>
<pin name="Y1" x="10.16" y="15.24" length="short" rot="R180"/>
<pin name="Y2" x="10.16" y="12.7" length="short" rot="R180"/>
<pin name="Y3" x="10.16" y="10.16" length="short" rot="R180"/>
<pin name="Y4" x="10.16" y="7.62" length="short" rot="R180"/>
<pin name="Y5" x="10.16" y="5.08" length="short" rot="R180"/>
<pin name="Y6" x="10.16" y="2.54" length="short" rot="R180"/>
<pin name="Y7" x="10.16" y="0" length="short" rot="R180"/>
<pin name="Y8" x="10.16" y="-2.54" length="short" rot="R180"/>
<pin name="Y9" x="10.16" y="-5.08" length="short" rot="R180"/>
<pin name="Y10" x="10.16" y="-7.62" length="short" rot="R180"/>
<pin name="Y11" x="10.16" y="-10.16" length="short" rot="R180"/>
<pin name="Y12" x="10.16" y="-12.7" length="short" rot="R180"/>
<pin name="Y13" x="10.16" y="-15.24" length="short" rot="R180"/>
<pin name="Y14" x="10.16" y="-17.78" length="short" rot="R180"/>
<pin name="Y15" x="10.16" y="-20.32" length="short" rot="R180"/>
<pin name="S0" x="-12.7" y="17.78" length="short"/>
<pin name="S1" x="-12.7" y="15.24" length="short"/>
<pin name="S2" x="-12.7" y="12.7" length="short"/>
<pin name="S3" x="-12.7" y="10.16" length="short"/>
<pin name="GND" x="-12.7" y="-5.08" length="short" direction="pwr"/>
<pin name="VCC" x="-12.7" y="0" length="short" direction="pwr"/>
<pin name="Z" x="-5.08" y="-25.4" length="short" rot="R90"/>
<pin name="!ENABLE!" x="-12.7" y="-17.78" length="short"/>
</symbol>
<symbol name="BCD-ENCODER-DEC">
<wire x1="-5.08" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<pin name="8/" x="-5.08" y="-5.08" visible="off" length="short" rot="R90"/>
<pin name="4/" x="-2.54" y="-5.08" visible="off" length="short" rot="R90"/>
<pin name="2/" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<pin name="1/" x="2.54" y="-5.08" visible="off" length="short" rot="R90"/>
<circle x="-1.27" y="1.27" radius="1.79605" width="0.254" layer="94"/>
<pin name="COMMON" x="0" y="7.62" visible="off" length="short" rot="R270"/>
<text x="-3.81" y="6.35" size="1.016" layer="97">COM</text>
<text x="1.27" y="-3.81" size="1.016" layer="97">1/</text>
<text x="-1.27" y="-3.81" size="1.016" layer="97">2/</text>
<text x="-3.81" y="-3.81" size="1.016" layer="97">4/</text>
<text x="-6.35" y="-3.81" size="1.016" layer="97">8/</text>
<text x="3.81" y="6.35" size="1.016" layer="96">&gt;VALUE</text>
<text x="3.81" y="-1.27" size="1.016" layer="95">&gt;NAME</text>
</symbol>
<symbol name="DIODE">
<pin name="A" x="-2.54" y="0" length="short"/>
<pin name="C" x="2.54" y="0" length="short" rot="R180"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="2.54" size="1.778" layer="95">&gt;VALUE</text>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74HC4067">
<gates>
<gate name="G$1" symbol="16:1MUX/DEMUX" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="DIP-24">
<connects>
<connect gate="G$1" pin="!ENABLE!" pad="P15"/>
<connect gate="G$1" pin="GND" pad="P12"/>
<connect gate="G$1" pin="S0" pad="P10"/>
<connect gate="G$1" pin="S1" pad="P11"/>
<connect gate="G$1" pin="S2" pad="P14"/>
<connect gate="G$1" pin="S3" pad="P13"/>
<connect gate="G$1" pin="VCC" pad="P24"/>
<connect gate="G$1" pin="Y0" pad="P9"/>
<connect gate="G$1" pin="Y1" pad="P8"/>
<connect gate="G$1" pin="Y10" pad="P21"/>
<connect gate="G$1" pin="Y11" pad="P20"/>
<connect gate="G$1" pin="Y12" pad="P19"/>
<connect gate="G$1" pin="Y13" pad="P18"/>
<connect gate="G$1" pin="Y14" pad="P17"/>
<connect gate="G$1" pin="Y15" pad="P16"/>
<connect gate="G$1" pin="Y2" pad="P7"/>
<connect gate="G$1" pin="Y3" pad="P6"/>
<connect gate="G$1" pin="Y4" pad="P5"/>
<connect gate="G$1" pin="Y5" pad="P4"/>
<connect gate="G$1" pin="Y6" pad="P3"/>
<connect gate="G$1" pin="Y7" pad="P2"/>
<connect gate="G$1" pin="Y8" pad="P23"/>
<connect gate="G$1" pin="Y9" pad="P22"/>
<connect gate="G$1" pin="Z" pad="P1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ENCODER-DEC">
<gates>
<gate name="G$1" symbol="BCD-ENCODER-DEC" x="19.05" y="-11.43"/>
</gates>
<devices>
<device name="" package="4-BIT-ENCODER">
<connects>
<connect gate="G$1" pin="1/" pad="1/"/>
<connect gate="G$1" pin="2/" pad="2/"/>
<connect gate="G$1" pin="4/" pad="4/"/>
<connect gate="G$1" pin="8/" pad="8/"/>
<connect gate="G$1" pin="COMMON" pad="COMMON"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ENCODER-HEX">
<gates>
<gate name="G$1" symbol="BCD-ENCODER-DEC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="4-BIT-ENCODER">
<connects>
<connect gate="G$1" pin="1/" pad="1/"/>
<connect gate="G$1" pin="2/" pad="2/"/>
<connect gate="G$1" pin="4/" pad="4/"/>
<connect gate="G$1" pin="8/" pad="8/"/>
<connect gate="G$1" pin="COMMON" pad="COMMON"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TS4148">
<gates>
<gate name="G$1" symbol="DIODE" x="15.24" y="-2.54"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="G$1" pin="A" pad="ANODE"/>
<connect gate="G$1" pin="C" pad="CATHODE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="monitor-parts" deviceset="74HC4067" device=""/>
<part name="U$2" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$3" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$4" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$5" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$6" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$7" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$8" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$9" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$10" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$11" library="monitor-parts" deviceset="ENCODER-DEC" device=""/>
<part name="U$12" library="monitor-parts" deviceset="ENCODER-HEX" device=""/>
<part name="D1" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D2" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D3" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D4" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D5" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D6" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D7" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D8" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D9" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D10" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D11" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D12" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D13" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D14" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D15" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D16" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D17" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D18" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D19" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D20" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D21" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D22" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D23" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D24" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D25" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D26" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D27" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D28" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D29" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D30" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D31" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D32" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D33" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D34" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D35" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D36" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D37" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D38" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D39" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D40" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D41" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D42" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D43" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="D44" library="monitor-parts" deviceset="TS4148" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="15.24" y="71.12"/>
<instance part="U$2" gate="G$1" x="60.96" y="10.16" rot="R90"/>
<instance part="U$3" gate="G$1" x="60.96" y="22.86" rot="R90"/>
<instance part="U$4" gate="G$1" x="60.96" y="35.56" rot="R90"/>
<instance part="U$5" gate="G$1" x="60.96" y="48.26" rot="R90"/>
<instance part="U$6" gate="G$1" x="60.96" y="60.96" rot="R90"/>
<instance part="U$7" gate="G$1" x="60.96" y="73.66" rot="R90"/>
<instance part="U$8" gate="G$1" x="60.96" y="86.36" rot="R90"/>
<instance part="U$9" gate="G$1" x="60.96" y="99.06" rot="R90"/>
<instance part="U$10" gate="G$1" x="60.96" y="111.76" rot="R90"/>
<instance part="U$11" gate="G$1" x="60.96" y="124.46" rot="R90"/>
<instance part="U$12" gate="G$1" x="60.96" y="-7.62" rot="R90"/>
<instance part="D1" gate="G$1" x="73.66" y="5.08" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="4.5974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D2" gate="G$1" x="73.66" y="7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="7.1374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D3" gate="G$1" x="73.66" y="10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="9.6774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D4" gate="G$1" x="73.66" y="12.7" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="12.2174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D5" gate="G$1" x="73.66" y="17.78" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="17.2974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D6" gate="G$1" x="73.66" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="19.8374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D7" gate="G$1" x="73.66" y="22.86" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="22.3774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D8" gate="G$1" x="73.66" y="25.4" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="24.9174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D9" gate="G$1" x="73.66" y="30.48" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="29.9974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D10" gate="G$1" x="73.66" y="33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="32.5374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D11" gate="G$1" x="73.66" y="35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="35.0774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D12" gate="G$1" x="73.66" y="38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="37.6174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D13" gate="G$1" x="73.66" y="43.18" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="42.6974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D14" gate="G$1" x="73.66" y="45.72" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="45.2374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D15" gate="G$1" x="73.66" y="48.26" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="47.7774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D16" gate="G$1" x="73.66" y="50.8" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="50.3174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D17" gate="G$1" x="73.66" y="55.88" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="55.3974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D18" gate="G$1" x="73.66" y="58.42" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="57.9374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D19" gate="G$1" x="73.66" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="60.4774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D20" gate="G$1" x="73.66" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="63.0174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D21" gate="G$1" x="73.66" y="68.58" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="68.0974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D22" gate="G$1" x="73.66" y="71.12" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="70.6374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D23" gate="G$1" x="73.66" y="73.66" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="73.1774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D24" gate="G$1" x="73.66" y="76.2" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="75.7174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D25" gate="G$1" x="73.66" y="81.28" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="80.7974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D26" gate="G$1" x="73.66" y="83.82" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="83.3374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D27" gate="G$1" x="73.66" y="86.36" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="85.8774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D28" gate="G$1" x="73.66" y="88.9" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="88.4174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D29" gate="G$1" x="73.66" y="93.98" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="93.4974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D30" gate="G$1" x="73.66" y="96.52" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="96.0374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D31" gate="G$1" x="73.66" y="99.06" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="98.5774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D32" gate="G$1" x="73.66" y="101.6" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="101.1174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D33" gate="G$1" x="73.66" y="106.68" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="106.1974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D34" gate="G$1" x="73.66" y="109.22" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="108.7374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D35" gate="G$1" x="73.66" y="111.76" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="111.2774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D36" gate="G$1" x="73.66" y="114.3" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="113.8174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D37" gate="G$1" x="73.66" y="119.38" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="118.8974" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D38" gate="G$1" x="73.66" y="121.92" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="121.4374" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D39" gate="G$1" x="73.66" y="124.46" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="123.9774" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D40" gate="G$1" x="73.66" y="127" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="126.5174" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D41" gate="G$1" x="73.66" y="-12.7" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="-13.1826" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D42" gate="G$1" x="73.66" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="-10.6426" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D43" gate="G$1" x="73.66" y="-7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="-8.1026" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="D44" gate="G$1" x="73.66" y="-5.08" smashed="yes" rot="R180">
<attribute name="NAME" x="71.12" y="-5.5626" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="-5.08" y="60.96"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="U$2" gate="G$1" pin="8/"/>
<wire x1="71.12" y1="5.08" x2="66.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="4/"/>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="66.04" y1="7.62" x2="71.12" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D3" gate="G$1" pin="C"/>
<pinref part="U$2" gate="G$1" pin="2/"/>
<wire x1="71.12" y1="10.16" x2="66.04" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="1/"/>
<pinref part="D4" gate="G$1" pin="C"/>
<wire x1="66.04" y1="12.7" x2="71.12" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="C"/>
<pinref part="U$3" gate="G$1" pin="8/"/>
<wire x1="71.12" y1="17.78" x2="66.04" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="4/"/>
<pinref part="D6" gate="G$1" pin="C"/>
<wire x1="66.04" y1="20.32" x2="71.12" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="2/"/>
<pinref part="D7" gate="G$1" pin="C"/>
<wire x1="66.04" y1="22.86" x2="71.12" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="1/"/>
<pinref part="D8" gate="G$1" pin="C"/>
<wire x1="66.04" y1="25.4" x2="71.12" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="D9" gate="G$1" pin="C"/>
<pinref part="U$4" gate="G$1" pin="8/"/>
<wire x1="71.12" y1="30.48" x2="66.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="4/"/>
<pinref part="D10" gate="G$1" pin="C"/>
<wire x1="66.04" y1="33.02" x2="71.12" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="2/"/>
<pinref part="D11" gate="G$1" pin="C"/>
<wire x1="66.04" y1="35.56" x2="71.12" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="1/"/>
<pinref part="D12" gate="G$1" pin="C"/>
<wire x1="66.04" y1="38.1" x2="71.12" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="8/"/>
<pinref part="D13" gate="G$1" pin="C"/>
<wire x1="66.04" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="4/"/>
<pinref part="D14" gate="G$1" pin="C"/>
<wire x1="66.04" y1="45.72" x2="71.12" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="2/"/>
<pinref part="D15" gate="G$1" pin="C"/>
<wire x1="66.04" y1="48.26" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="1/"/>
<pinref part="D16" gate="G$1" pin="C"/>
<wire x1="66.04" y1="50.8" x2="71.12" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="8/"/>
<pinref part="D17" gate="G$1" pin="C"/>
<wire x1="66.04" y1="55.88" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="4/"/>
<pinref part="D18" gate="G$1" pin="C"/>
<wire x1="66.04" y1="58.42" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="2/"/>
<pinref part="D19" gate="G$1" pin="C"/>
<wire x1="66.04" y1="60.96" x2="71.12" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="1/"/>
<pinref part="D20" gate="G$1" pin="C"/>
<wire x1="66.04" y1="63.5" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="8/"/>
<pinref part="D21" gate="G$1" pin="C"/>
<wire x1="66.04" y1="68.58" x2="71.12" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="4/"/>
<pinref part="D22" gate="G$1" pin="C"/>
<wire x1="66.04" y1="71.12" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="2/"/>
<pinref part="D23" gate="G$1" pin="C"/>
<wire x1="66.04" y1="73.66" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="1/"/>
<pinref part="D24" gate="G$1" pin="C"/>
<wire x1="66.04" y1="76.2" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="8/"/>
<pinref part="D25" gate="G$1" pin="C"/>
<wire x1="66.04" y1="81.28" x2="71.12" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="4/"/>
<pinref part="D26" gate="G$1" pin="C"/>
<wire x1="66.04" y1="83.82" x2="71.12" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="2/"/>
<pinref part="D27" gate="G$1" pin="C"/>
<wire x1="66.04" y1="86.36" x2="71.12" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="1/"/>
<pinref part="D28" gate="G$1" pin="C"/>
<wire x1="66.04" y1="88.9" x2="71.12" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="8/"/>
<pinref part="D29" gate="G$1" pin="C"/>
<wire x1="66.04" y1="93.98" x2="71.12" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="4/"/>
<pinref part="D30" gate="G$1" pin="C"/>
<wire x1="66.04" y1="96.52" x2="71.12" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="2/"/>
<pinref part="D31" gate="G$1" pin="C"/>
<wire x1="66.04" y1="99.06" x2="71.12" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="1/"/>
<pinref part="D32" gate="G$1" pin="C"/>
<wire x1="66.04" y1="101.6" x2="71.12" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="8/"/>
<pinref part="D33" gate="G$1" pin="C"/>
<wire x1="66.04" y1="106.68" x2="71.12" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="4/"/>
<pinref part="D34" gate="G$1" pin="C"/>
<wire x1="66.04" y1="109.22" x2="71.12" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="2/"/>
<pinref part="D35" gate="G$1" pin="C"/>
<wire x1="66.04" y1="111.76" x2="71.12" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="1/"/>
<pinref part="D36" gate="G$1" pin="C"/>
<wire x1="66.04" y1="114.3" x2="71.12" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="8/"/>
<pinref part="D37" gate="G$1" pin="C"/>
<wire x1="66.04" y1="119.38" x2="71.12" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="4/"/>
<pinref part="D38" gate="G$1" pin="C"/>
<wire x1="66.04" y1="121.92" x2="71.12" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="2/"/>
<pinref part="D39" gate="G$1" pin="C"/>
<wire x1="66.04" y1="124.46" x2="71.12" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="1/"/>
<pinref part="D40" gate="G$1" pin="C"/>
<wire x1="66.04" y1="127" x2="71.12" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="8/"/>
<pinref part="D41" gate="G$1" pin="C"/>
<wire x1="66.04" y1="-12.7" x2="71.12" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="4/"/>
<pinref part="D42" gate="G$1" pin="C"/>
<wire x1="66.04" y1="-10.16" x2="71.12" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="2/"/>
<pinref part="D43" gate="G$1" pin="C"/>
<wire x1="66.04" y1="-7.62" x2="71.12" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="1/"/>
<pinref part="D44" gate="G$1" pin="C"/>
<wire x1="66.04" y1="-5.08" x2="71.12" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="76.2" y1="5.08" x2="78.74" y2="5.08" width="0.1524" layer="91"/>
<wire x1="78.74" y1="5.08" x2="78.74" y2="17.78" width="0.1524" layer="91"/>
<junction x="78.74" y="5.08"/>
<pinref part="D37" gate="G$1" pin="A"/>
<wire x1="78.74" y1="17.78" x2="78.74" y2="30.48" width="0.1524" layer="91"/>
<wire x1="78.74" y1="30.48" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<wire x1="78.74" y1="43.18" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<wire x1="78.74" y1="55.88" x2="78.74" y2="68.58" width="0.1524" layer="91"/>
<wire x1="78.74" y1="68.58" x2="78.74" y2="81.28" width="0.1524" layer="91"/>
<wire x1="78.74" y1="81.28" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<wire x1="78.74" y1="93.98" x2="78.74" y2="106.68" width="0.1524" layer="91"/>
<wire x1="78.74" y1="106.68" x2="78.74" y2="119.38" width="0.1524" layer="91"/>
<wire x1="78.74" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<pinref part="D5" gate="G$1" pin="A"/>
<wire x1="76.2" y1="17.78" x2="78.74" y2="17.78" width="0.1524" layer="91"/>
<junction x="78.74" y="17.78"/>
<pinref part="D9" gate="G$1" pin="A"/>
<wire x1="76.2" y1="30.48" x2="78.74" y2="30.48" width="0.1524" layer="91"/>
<junction x="78.74" y="30.48"/>
<pinref part="D13" gate="G$1" pin="A"/>
<wire x1="76.2" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<junction x="78.74" y="43.18"/>
<pinref part="D17" gate="G$1" pin="A"/>
<wire x1="76.2" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<junction x="78.74" y="55.88"/>
<pinref part="D21" gate="G$1" pin="A"/>
<wire x1="76.2" y1="68.58" x2="78.74" y2="68.58" width="0.1524" layer="91"/>
<junction x="78.74" y="68.58"/>
<pinref part="D25" gate="G$1" pin="A"/>
<wire x1="76.2" y1="81.28" x2="78.74" y2="81.28" width="0.1524" layer="91"/>
<junction x="78.74" y="81.28"/>
<pinref part="D29" gate="G$1" pin="A"/>
<wire x1="76.2" y1="93.98" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<junction x="78.74" y="93.98"/>
<pinref part="D33" gate="G$1" pin="A"/>
<wire x1="76.2" y1="106.68" x2="78.74" y2="106.68" width="0.1524" layer="91"/>
<junction x="78.74" y="106.68"/>
<pinref part="D41" gate="G$1" pin="A"/>
<wire x1="76.2" y1="-12.7" x2="78.74" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-12.7" x2="78.74" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="76.2" y1="7.62" x2="81.28" y2="7.62" width="0.1524" layer="91"/>
<pinref part="D38" gate="G$1" pin="A"/>
<wire x1="76.2" y1="121.92" x2="81.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="81.28" y1="121.92" x2="81.28" y2="109.22" width="0.1524" layer="91"/>
<junction x="81.28" y="7.62"/>
<pinref part="D6" gate="G$1" pin="A"/>
<wire x1="81.28" y1="109.22" x2="81.28" y2="96.52" width="0.1524" layer="91"/>
<wire x1="81.28" y1="96.52" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<wire x1="81.28" y1="83.82" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="71.12" x2="81.28" y2="58.42" width="0.1524" layer="91"/>
<wire x1="81.28" y1="58.42" x2="81.28" y2="45.72" width="0.1524" layer="91"/>
<wire x1="81.28" y1="45.72" x2="81.28" y2="33.02" width="0.1524" layer="91"/>
<wire x1="81.28" y1="33.02" x2="81.28" y2="20.32" width="0.1524" layer="91"/>
<wire x1="81.28" y1="20.32" x2="81.28" y2="7.62" width="0.1524" layer="91"/>
<wire x1="76.2" y1="20.32" x2="81.28" y2="20.32" width="0.1524" layer="91"/>
<junction x="81.28" y="20.32"/>
<pinref part="D10" gate="G$1" pin="A"/>
<wire x1="76.2" y1="33.02" x2="81.28" y2="33.02" width="0.1524" layer="91"/>
<junction x="81.28" y="33.02"/>
<pinref part="D14" gate="G$1" pin="A"/>
<wire x1="76.2" y1="45.72" x2="81.28" y2="45.72" width="0.1524" layer="91"/>
<junction x="81.28" y="45.72"/>
<pinref part="D18" gate="G$1" pin="A"/>
<wire x1="76.2" y1="58.42" x2="81.28" y2="58.42" width="0.1524" layer="91"/>
<junction x="81.28" y="58.42"/>
<pinref part="D22" gate="G$1" pin="A"/>
<wire x1="76.2" y1="71.12" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<junction x="81.28" y="71.12"/>
<pinref part="D26" gate="G$1" pin="A"/>
<wire x1="76.2" y1="83.82" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<junction x="81.28" y="83.82"/>
<pinref part="D30" gate="G$1" pin="A"/>
<wire x1="76.2" y1="96.52" x2="81.28" y2="96.52" width="0.1524" layer="91"/>
<junction x="81.28" y="96.52"/>
<pinref part="D34" gate="G$1" pin="A"/>
<wire x1="76.2" y1="109.22" x2="81.28" y2="109.22" width="0.1524" layer="91"/>
<junction x="81.28" y="109.22"/>
<pinref part="D42" gate="G$1" pin="A"/>
<wire x1="81.28" y1="7.62" x2="81.28" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-10.16" x2="76.2" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="76.2" y1="10.16" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="10.16" x2="83.82" y2="22.86" width="0.1524" layer="91"/>
<junction x="83.82" y="10.16"/>
<pinref part="D39" gate="G$1" pin="A"/>
<wire x1="83.82" y1="22.86" x2="83.82" y2="35.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="35.56" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<wire x1="83.82" y1="48.26" x2="83.82" y2="60.96" width="0.1524" layer="91"/>
<wire x1="83.82" y1="60.96" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<wire x1="83.82" y1="73.66" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<wire x1="83.82" y1="86.36" x2="83.82" y2="99.06" width="0.1524" layer="91"/>
<wire x1="83.82" y1="99.06" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="83.82" y1="111.76" x2="83.82" y2="124.46" width="0.1524" layer="91"/>
<wire x1="83.82" y1="124.46" x2="76.2" y2="124.46" width="0.1524" layer="91"/>
<pinref part="D7" gate="G$1" pin="A"/>
<wire x1="76.2" y1="22.86" x2="83.82" y2="22.86" width="0.1524" layer="91"/>
<junction x="83.82" y="22.86"/>
<pinref part="D11" gate="G$1" pin="A"/>
<wire x1="76.2" y1="35.56" x2="83.82" y2="35.56" width="0.1524" layer="91"/>
<junction x="83.82" y="35.56"/>
<pinref part="D15" gate="G$1" pin="A"/>
<wire x1="76.2" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<junction x="83.82" y="48.26"/>
<pinref part="D19" gate="G$1" pin="A"/>
<wire x1="76.2" y1="60.96" x2="83.82" y2="60.96" width="0.1524" layer="91"/>
<junction x="83.82" y="60.96"/>
<pinref part="D23" gate="G$1" pin="A"/>
<wire x1="76.2" y1="73.66" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
<junction x="83.82" y="73.66"/>
<pinref part="D27" gate="G$1" pin="A"/>
<wire x1="76.2" y1="86.36" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<junction x="83.82" y="86.36"/>
<pinref part="D31" gate="G$1" pin="A"/>
<wire x1="76.2" y1="99.06" x2="83.82" y2="99.06" width="0.1524" layer="91"/>
<junction x="83.82" y="99.06"/>
<pinref part="D35" gate="G$1" pin="A"/>
<wire x1="76.2" y1="111.76" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<junction x="83.82" y="111.76"/>
<pinref part="D43" gate="G$1" pin="A"/>
<wire x1="76.2" y1="-7.62" x2="83.82" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-7.62" x2="83.82" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="76.2" y1="12.7" x2="86.36" y2="12.7" width="0.1524" layer="91"/>
<pinref part="D40" gate="G$1" pin="A"/>
<wire x1="76.2" y1="127" x2="86.36" y2="127" width="0.1524" layer="91"/>
<wire x1="86.36" y1="127" x2="86.36" y2="114.3" width="0.1524" layer="91"/>
<junction x="86.36" y="12.7"/>
<pinref part="D8" gate="G$1" pin="A"/>
<wire x1="86.36" y1="114.3" x2="86.36" y2="101.6" width="0.1524" layer="91"/>
<wire x1="86.36" y1="101.6" x2="86.36" y2="88.9" width="0.1524" layer="91"/>
<wire x1="86.36" y1="88.9" x2="86.36" y2="76.2" width="0.1524" layer="91"/>
<wire x1="86.36" y1="76.2" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<wire x1="86.36" y1="63.5" x2="86.36" y2="50.8" width="0.1524" layer="91"/>
<wire x1="86.36" y1="50.8" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<wire x1="86.36" y1="38.1" x2="86.36" y2="25.4" width="0.1524" layer="91"/>
<wire x1="86.36" y1="25.4" x2="86.36" y2="12.7" width="0.1524" layer="91"/>
<wire x1="76.2" y1="25.4" x2="86.36" y2="25.4" width="0.1524" layer="91"/>
<junction x="86.36" y="25.4"/>
<pinref part="D12" gate="G$1" pin="A"/>
<wire x1="76.2" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<junction x="86.36" y="38.1"/>
<pinref part="D16" gate="G$1" pin="A"/>
<wire x1="76.2" y1="50.8" x2="86.36" y2="50.8" width="0.1524" layer="91"/>
<junction x="86.36" y="50.8"/>
<pinref part="D20" gate="G$1" pin="A"/>
<wire x1="76.2" y1="63.5" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<junction x="86.36" y="63.5"/>
<pinref part="D24" gate="G$1" pin="A"/>
<wire x1="76.2" y1="76.2" x2="86.36" y2="76.2" width="0.1524" layer="91"/>
<junction x="86.36" y="76.2"/>
<pinref part="D28" gate="G$1" pin="A"/>
<wire x1="76.2" y1="88.9" x2="86.36" y2="88.9" width="0.1524" layer="91"/>
<junction x="86.36" y="88.9"/>
<pinref part="D32" gate="G$1" pin="A"/>
<wire x1="76.2" y1="101.6" x2="86.36" y2="101.6" width="0.1524" layer="91"/>
<junction x="86.36" y="101.6"/>
<pinref part="D36" gate="G$1" pin="A"/>
<wire x1="76.2" y1="114.3" x2="86.36" y2="114.3" width="0.1524" layer="91"/>
<junction x="86.36" y="114.3"/>
<pinref part="D44" gate="G$1" pin="A"/>
<wire x1="86.36" y1="12.7" x2="86.36" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-5.08" x2="76.2" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="2.54" y1="66.04" x2="-5.08" y2="66.04" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="-5.08" y1="66.04" x2="-5.08" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="COMMON"/>
<pinref part="U$1" gate="G$1" pin="Y2"/>
<wire x1="25.4" y1="83.82" x2="27.94" y2="83.82" width="0.1524" layer="91"/>
<wire x1="27.94" y1="83.82" x2="27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="22.86" x2="53.34" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="COMMON"/>
<wire x1="30.48" y1="35.56" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<wire x1="30.48" y1="35.56" x2="30.48" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="Y3"/>
<wire x1="30.48" y1="81.28" x2="25.4" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="COMMON"/>
<wire x1="53.34" y1="-7.62" x2="33.02" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-7.62" x2="33.02" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="Y0"/>
<wire x1="33.02" y1="88.9" x2="25.4" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y1"/>
<wire x1="25.4" y1="86.36" x2="43.18" y2="86.36" width="0.1524" layer="91"/>
<wire x1="43.18" y1="86.36" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="COMMON"/>
<wire x1="43.18" y1="10.16" x2="53.34" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y4"/>
<wire x1="25.4" y1="78.74" x2="35.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="35.56" y1="78.74" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="COMMON"/>
<wire x1="35.56" y1="48.26" x2="53.34" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="COMMON"/>
<wire x1="53.34" y1="60.96" x2="38.1" y2="60.96" width="0.1524" layer="91"/>
<wire x1="38.1" y1="60.96" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="Y5"/>
<wire x1="38.1" y1="76.2" x2="25.4" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y6"/>
<pinref part="U$7" gate="G$1" pin="COMMON"/>
<wire x1="25.4" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y7"/>
<wire x1="25.4" y1="71.12" x2="45.72" y2="71.12" width="0.1524" layer="91"/>
<wire x1="45.72" y1="71.12" x2="45.72" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="COMMON"/>
<wire x1="45.72" y1="86.36" x2="53.34" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y8"/>
<wire x1="25.4" y1="68.58" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
<wire x1="48.26" y1="68.58" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="COMMON"/>
<wire x1="48.26" y1="99.06" x2="53.34" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y9"/>
<wire x1="25.4" y1="66.04" x2="50.8" y2="66.04" width="0.1524" layer="91"/>
<wire x1="50.8" y1="66.04" x2="50.8" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="COMMON"/>
<wire x1="50.8" y1="111.76" x2="53.34" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="Y10"/>
<wire x1="25.4" y1="63.5" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
<wire x1="40.64" y1="63.5" x2="40.64" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="COMMON"/>
<wire x1="40.64" y1="124.46" x2="53.34" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
