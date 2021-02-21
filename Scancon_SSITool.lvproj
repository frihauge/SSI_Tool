<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Ecoder_indicator.ctl" Type="VI" URL="../Ecoder_indicator.ctl"/>
		<Item Name="SSI_tool_UserMenu.rtm" Type="Document" URL="../SSI_tool_UserMenu.rtm"/>
		<Item Name="SSIToolMain.vi" Type="VI" URL="../SSIToolMain.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
			</Item>
			<Item Name="GUI_Handler_Main.lvclass" Type="LVClass" URL="../GUIHandler_Main/GUI_Handler_Main.lvclass"/>
			<Item Name="GUI_Handler_Seq.lvclass" Type="LVClass" URL="../GUIHandler/GUI_Handler_Seq.lvclass"/>
			<Item Name="GuiSectionEnum.ctl" Type="VI" URL="../GUIHandler/GuiSectionEnum.ctl"/>
			<Item Name="mainEventInfo.ctl" Type="VI" URL="../Exe_Queues/TypeDef/mainEventInfo.ctl"/>
			<Item Name="mainExeStates.ctl" Type="VI" URL="../Exe_Queues/TypeDef/mainExeStates.ctl"/>
			<Item Name="TestSeqClass.lvclass" Type="LVClass" URL="../testSeq/TestSeqClass.lvclass"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
