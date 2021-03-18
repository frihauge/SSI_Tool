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
		<Item Name="Typedef" Type="Folder">
			<Item Name="Ecoder_indicator.ctl" Type="VI" URL="../Ecoder_indicator.ctl"/>
			<Item Name="TestTypeSelect.ctl" Type="VI" URL="../Typedef/TestTypeSelect.ctl"/>
		</Item>
		<Item Name="GUI_Handler_Main.lvclass" Type="LVClass" URL="../GUIHandler_Main/GUI_Handler_Main.lvclass"/>
		<Item Name="GUI_Handler_Seq.lvclass" Type="LVClass" URL="../GUIHandler/GUI_Handler_Seq.lvclass"/>
		<Item Name="MainMeasure.vi" Type="VI" URL="../MainMeasure.vi"/>
		<Item Name="MHM_1SL_interface.lvlib" Type="Library" URL="../DUT_Interface/lv_interface/MHM_1SL_interface.lvlib"/>
		<Item Name="SSI_tool_UserMenu.rtm" Type="Document" URL="../SSI_tool_UserMenu.rtm"/>
		<Item Name="SSIToolMain.vi" Type="VI" URL="../SSIToolMain.vi"/>
		<Item Name="TestSeqClass.lvclass" Type="LVClass" URL="../testSeq/TestSeqClass.lvclass"/>
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
			<Item Name="GuiSectionEnum.ctl" Type="VI" URL="../GUIHandler/GuiSectionEnum.ctl"/>
			<Item Name="mainEventInfo.ctl" Type="VI" URL="../Exe_Queues/TypeDef/mainEventInfo.ctl"/>
			<Item Name="mainExeStates.ctl" Type="VI" URL="../Exe_Queues/TypeDef/mainExeStates.ctl"/>
			<Item Name="MHM_ErrorEnum.ctl" Type="VI" URL="../DUT_Interface/lv_interface/enums/MHM_ErrorEnum.ctl"/>
			<Item Name="TestMeasureStep.lvclass" Type="LVClass" URL="../TestMeasureStep/TestMeasureStep.lvclass"/>
			<Item Name="TestSeqType.ctl" Type="VI" URL="../testSeq/Typedef/TestSeqType.ctl"/>
			<Item Name="TestStatus.ctl" Type="VI" URL="../testSeq/Typedef/TestStatus.ctl"/>
			<Item Name="UpdateGUIFromSeq.vi" Type="VI" URL="../testSeq/UpdateGUIFromSeq.vi"/>
			<Item Name="UpdateMeasurementTestElement.vi" Type="VI" URL="../testSeq/UpdateMeasurementTestElement.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Scancon_SSITool" Type="Zip File">
				<Property Name="Absolute[0]" Type="Bool">false</Property>
				<Property Name="BuildName" Type="Str">Scancon_SSITool</Property>
				<Property Name="Comments" Type="Str"></Property>
				<Property Name="DestinationID[0]" Type="Str">{041180D2-9503-46E9-9DF1-D1697DB629F9}</Property>
				<Property Name="DestinationItemCount" Type="Int">1</Property>
				<Property Name="DestinationName[0]" Type="Str">Destination Directory</Property>
				<Property Name="IncludedItemCount" Type="Int">1</Property>
				<Property Name="IncludedItems[0]" Type="Ref">/My Computer</Property>
				<Property Name="IncludeProject" Type="Bool">true</Property>
				<Property Name="Path[0]" Type="Path">../../builds/Scancon_SSITool/Scancon_SSITool/Scancon_SSITool.zip</Property>
				<Property Name="ZipBase" Type="Str">NI_zipbasedefault</Property>
			</Item>
			<Item Name="Scanconn SSI Tool" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{8FBB28FF-2F24-42E5-8270-DA41982AE841}</Property>
				<Property Name="App_INI_GUID" Type="Str">{FEC29EAC-2DDF-4A77-8557-C6403849180B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3A4C0D6F-4FF4-47C1-B649-933FC48FD95F}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Scanconn SSI Tool</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/Scanconn SSI Tool</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{667F7F76-FE80-4FA1-8FBE-D8941C9CE506}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SSITool.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/Scanconn SSI Tool/SSITool.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/Scanconn SSI Tool/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{1DFADEF0-4B42-4880-9528-890F6AF82F8A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/SSIToolMain.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Green Instruments A/S</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Scanconn SSI Tool</Property>
				<Property Name="TgtF_internalName" Type="Str">Scanconn SSI Tool</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 Green Instruments A/S</Property>
				<Property Name="TgtF_productName" Type="Str">Scanconn SSI Tool</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7CB5F64F-8A7F-41B9-A79B-1C4CFF6AAFD1}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SSITool.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
