﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
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
		<Item Name="Supportfunctions" Type="Folder">
			<Item Name="AccuracyResultQuery.vi" Type="VI" URL="../Supportfunctions/AccuracyResultQuery.vi"/>
			<Item Name="BISS_ReadConfigFile.vi" Type="VI" URL="../BISS_ReadConfigFile.vi"/>
			<Item Name="Calculate Accuracy.vi" Type="VI" URL="../Supportfunctions/Calculate Accuracy.vi"/>
			<Item Name="CloseAlllHandles.vi" Type="VI" URL="../TestMeasureStep/CloseAlllHandles.vi"/>
			<Item Name="MainMeasure.vi" Type="VI" URL="../MainMeasure.vi"/>
			<Item Name="MHM Get Open Interface.vi" Type="VI" URL="../DUT_Interface/lv_interface/VIs/MHM Get Open Interface.vi"/>
		</Item>
		<Item Name="Typedef" Type="Folder">
			<Item Name="Ecoder_indicator.ctl" Type="VI" URL="../Ecoder_indicator.ctl"/>
			<Item Name="TestTypeSelect.ctl" Type="VI" URL="../Typedef/TestTypeSelect.ctl"/>
		</Item>
		<Item Name="Get Single Sequence from array.vi" Type="VI" URL="../Supportfunctions/Get Single Sequence from array.vi"/>
		<Item Name="GUI_Handler_Main.lvclass" Type="LVClass" URL="../GUIHandler_Main/GUI_Handler_Main.lvclass"/>
		<Item Name="GUI_Handler_Seq.lvclass" Type="LVClass" URL="../GUIHandler/GUI_Handler_Seq.lvclass"/>
		<Item Name="maxonEPOS.lvlib" Type="Library" URL="../InstrumentsInterfaces/Motordriver/maxon EPOS/Examples/maxonEPOS.lvlib"/>
		<Item Name="MHM_1SL_interface.lvlib" Type="Library" URL="../DUT_Interface/lv_interface/MHM_1SL_interface.lvlib"/>
		<Item Name="ProgramSettings.lvclass" Type="LVClass" URL="../ProgramSettings/ProgramSettings.lvclass"/>
		<Item Name="Scancon ASIC.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Scancon ASIC/Scancon ASIC.lvlib"/>
		<Item Name="SSI_tool_UserMenu.rtm" Type="Document" URL="../SSI_tool_UserMenu.rtm"/>
		<Item Name="SSIToolMain.vi" Type="VI" URL="../SSIToolMain.vi"/>
		<Item Name="TestSeqClass.lvclass" Type="LVClass" URL="../testSeq/TestSeqClass.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Close.vi" Type="VI" URL="/&lt;instrlib&gt;/Tenma 72-25XX/Tenma 72-25XX/Public/Close.vi"/>
				<Item Name="Configure Output.vi" Type="VI" URL="/&lt;instrlib&gt;/Tenma 72-25XX/Tenma 72-25XX/Public/Configure/Configure Output.vi"/>
				<Item Name="Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/Tenma 72-25XX/Tenma 72-25XX/Public/Initialize.vi"/>
				<Item Name="Output OnOff.vi" Type="VI" URL="/&lt;instrlib&gt;/Tenma 72-25XX/Tenma 72-25XX/Public/Action-Status/Output OnOff.vi"/>
				<Item Name="Special Write-Read.vi" Type="VI" URL="/&lt;instrlib&gt;/Tenma 72-25XX/Tenma 72-25XX/Private/Special Write-Read.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="compatCalcOffset.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
				<Item Name="compatFileDialog.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
				<Item Name="compatOpenFileOperation.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FindCloseTagByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindCloseTagByName.vi"/>
				<Item Name="FindElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElement.vi"/>
				<Item Name="FindElementStartByName.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindElementStartByName.vi"/>
				<Item Name="FindEmptyElement.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindEmptyElement.vi"/>
				<Item Name="FindFirstTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindFirstTag.vi"/>
				<Item Name="FindMatchingCloseTag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/FindMatchingCloseTag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open_Create_Replace File.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
				<Item Name="ParseXMLFragments.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/ParseXMLFragments.vi"/>
				<Item Name="Read From XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(array).vi"/>
				<Item Name="Read From XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File(string).vi"/>
				<Item Name="Read From XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Read From XML File.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="VISA Flush IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Flush IO Buffer Mask.ctl"/>
				<Item Name="VISA Set IO Buffer Mask.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Set IO Buffer Mask.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write to XML File(array).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(array).vi"/>
				<Item Name="Write to XML File(string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File(string).vi"/>
				<Item Name="Write to XML File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/xml.llb/Write to XML File.vi"/>
			</Item>
			<Item Name="EposCmd.dll" Type="Document" URL="../../../../../../SSI_Tool/InstrumentsInterfaces/Motordriver/maxon EPOS/Resources/EposCmd.dll"/>
			<Item Name="EposCmd64.dll" Type="Document" URL="../../../../../../SSI_Tool/InstrumentsInterfaces/Motordriver/maxon EPOS/Resources/EposCmd64.dll"/>
			<Item Name="GuiSectionEnum.ctl" Type="VI" URL="../GUIHandler/GuiSectionEnum.ctl"/>
			<Item Name="mainEventInfo.ctl" Type="VI" URL="../Exe_Queues/TypeDef/mainEventInfo.ctl"/>
			<Item Name="mainExeStates.ctl" Type="VI" URL="../Exe_Queues/TypeDef/mainExeStates.ctl"/>
			<Item Name="MHM_1SL_interface.dll" Type="Document" URL="../../../../../../SSI_Tool/DUT_Interface/lv_interface/lib/MHM_1SL_interface.dll"/>
			<Item Name="MHM_CalDataEnum.ctl" Type="VI" URL="../DUT_Interface/lv_interface/enums/MHM_CalDataEnum.ctl"/>
			<Item Name="MHM_ErrorEnum.ctl" Type="VI" URL="../DUT_Interface/lv_interface/enums/MHM_ErrorEnum.ctl"/>
			<Item Name="MHM_ParamEnum.ctl" Type="VI" URL="../DUT_Interface/lv_interface/enums/MHM_ParamEnum.ctl"/>
			<Item Name="MHM_WriteVerifyEnum.ctl" Type="VI" URL="../DUT_Interface/lv_interface/enums/MHM_WriteVerifyEnum.ctl"/>
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
			<Item Name="Scancon_SSITool_Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Scancon</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{DD7F645B-68EB-48C3-8D11-0AC6C76B4DB2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">Scancon_SSITool</Property>
				<Property Name="Destination[1].parent" Type="Str">{DD7F645B-68EB-48C3-8D11-0AC6C76B4DB2}</Property>
				<Property Name="Destination[1].tag" Type="Str">{177A4E06-166D-4EA7-924F-647A38A8F175}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].unlock" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{727FC9D0-D89C-4872-9428-F98F0862F735}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 19.5</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{D9084972-85DA-4F19-B6B3-527E3948D5A1}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-VISA Runtime 19.5</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str"></Property>
				<Property Name="DistPart[2].productID" Type="Str"></Property>
				<Property Name="DistPart[2].productName" Type="Str">NI LabVIEW Run-Time Engine 2017</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{620DBAE1-B159-4204-8186-0813C8A6434C}</Property>
				<Property Name="DistPartCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">Green Instruments A/S</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Scancon_SSITool/Scancon_SSITool_Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">Scancon_SSITool_Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{177A4E06-166D-4EA7-924F-647A38A8F175}</Property>
				<Property Name="INST_installerName" Type="Str">install.exe</Property>
				<Property Name="INST_productName" Type="Str">Scancon_SSITool</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.1</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">17000000</Property>
				<Property Name="MSI_arpCompany" Type="Str">SCANCON Encoders A/S</Property>
				<Property Name="MSI_arpURL" Type="Str">www.scancon.dk</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{DFDDAD79-D255-4B83-9A2A-8293B1661C0F}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{580C3716-EA9F-4261-937D-34D1360343AD}</Property>
				<Property Name="MSI_windowTitle" Type="Str">SSI Tool installation</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{177A4E06-166D-4EA7-924F-647A38A8F175}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{177A4E06-166D-4EA7-924F-647A38A8F175}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">SSITool.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">SSITool</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Scancon_SSITool</Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">SSITool</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str">Scancon_SSITool</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{7CB5F64F-8A7F-41B9-A79B-1C4CFF6AAFD1}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">Scanconn SSI Tool</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/Scanconn SSI Tool</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
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
				<Property Name="Bld_version.build" Type="Int">3</Property>
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
