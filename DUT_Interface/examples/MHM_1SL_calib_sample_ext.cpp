#include "MHM_1SL_interface.h"
#include "BISS1SL_interface.h"
#include <iostream>
#include <math.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#define CYCLECNT 5000
using namespace std;
unsigned long ulMHMHandle;



//Using the BiSS-DLL for acquiring data of an application with a DUT (iC-MHM) and a reference encoder (iC-LGC) within a BiSS-Chain.
//Because the iC-MHM cannot be configured by the DLL if you use external Data, the iC-MHM configuration has to be changed by the user
//The needed configuration can be found in iC-MHM DLL LIBRARY DESCRIPTION (see description of function MHM_ActivateCalCfg)
unsigned long Measure(unsigned long ulNumberOfCycles, unsigned long *pulaDUT, unsigned long *pulaReference  )
{
	unsigned long ulaVersion[2];
	unsigned long ulError = 0;
	unsigned long ulBissHandle;

	//Get the version number of the DLL
	BISS_GetDLLVersion(ulaVersion);
	cout << "BISS1SL_interface.dll Version: " << ulaVersion[1] << "." << ulaVersion[0] << endl << endl;

	//Load the library and get a handle that will be used for subsequent accesses.
	ulError = BISS_Open(&ulBissHandle);

	//Set the BiSS Master properties
	ulError = BISS_SetComParam(ulBissHandle, eBISS_FREQ_SCD, 0x04);		//Single Cycle Data communication clockrate 2MHz
	ulError = BISS_SetComParam(ulBissHandle, eBISS_FREQ_AGS, 0x63);		//Auto Get Sens 100us

	//Connect the interface MB4U
	ulError = BISS_SetInterface(ulBissHandle, eBISS_MB4U, "");
	//Set protocol to BiSS-C
	ulError = BISS_SetComParam(ulBissHandle, eBISS_PROTOCOL, eBISS_PROTOCOL_C);

	if (ulError)
	{
		switch (ulError){
			case eBISS_INTERFACEDRIVER_NOT_FOUND:
				cout << "BISS_SetInterface failed (eBISS_INTERFACEDRIVER_NOT_FOUND):" << endl
				<< "Install FTDI Interface Drivers" << endl; break;
			case eBISS_INTERFACE_NOT_FOUND: 
				cout << "BISS_SetInterface failed (eBISS_INTERFACE_NOT_FOUND): " << endl 
				<< "Check wire connections and power supply" << endl; break;
			default: 
				cout << "BISS_SetInterface failed (errorcode: " << ulError << ")" 
				<< endl; break;
		}
	}
	else
	{
		cout << "Interface MB4U opened" << endl << endl;

		//Define DUT properties
		// BISS Data Channel 1 = iC-MHM. 12 Bit Singleturn + 1 Error + 1 Warning + 6 CRC = 20 Bit (Sign of life counter deactivated)
		// BISS Data Channel 2 = iC-LGC (used as reference with 16 Bit). 16 Bit Singleturn + 1 Error + 1 Warning + 6 CRC = 24 Bit
		unsigned long ulSCDLength[2] = {20,24};	//SCD length of slaves
		//MHM and LGC 0x43 CRC poly inverted
		unsigned long ulCRCpoly[2] = {0x43, 0x43};
		unsigned long ulCRCinvert[2] = {1,1};
		
		//Set the properties of the connected slaves
		for (int iDataCH = 0; iDataCH < 2; iDataCH++)
		{
			ulError = BISS_SetFrameParam(ulBissHandle, iDataCH, eBISS_SCD_CRC_POLY, ulCRCpoly[iDataCH]);
			ulError = BISS_SetFrameParam(ulBissHandle, iDataCH, eBISS_SCD_CRC_INVERT, ulCRCinvert[iDataCH]);
			ulError = BISS_SetFrameParam(ulBissHandle, iDataCH, eBISS_SCD_LENGTH, ulSCDLength[iDataCH]);
		}
		ulError = BISS_WriteMasterParams(ulBissHandle);	//Write Masterconfig to MB4U
		ulError = BISS_InitBissComm(ulBissHandle);

		//Read one SCD frame to check connection
		unsigned long *pulScdH, *pulScdL;
		pulScdH = new unsigned long [ulNumberOfCycles];
		pulScdL = new unsigned long [ulNumberOfCycles];
		unsigned long ulScdValid;
		unsigned long ulStartControlFrame=0;
		unsigned long ulControlFrameEnd;
		ulError = BISS_ReadSCD(ulBissHandle, pulScdH, pulScdL, &ulScdValid, ulStartControlFrame, &ulControlFrameEnd);
		for (int iDataCH = 0; iDataCH < 2; iDataCH++)
		{
			cout <<"Data Channel: " << iDataCH << " SCD: 0x" << hex << pulScdH[iDataCH] << pulScdL[iDataCH] << endl;
		}
		delete[] pulScdH;
		delete[] pulScdL;

		//Cycleread of the BiSS-Chain

		//Buffer for DUT data
		unsigned long ulDummyHigh[5000];
		unsigned long ulDummyLow[5000];
		unsigned long ulTimeDummy[5000];
		unsigned long ulStatusDummy[5000];

		//Read number of cycles
		ulError = BISS_ReadSCDFrames(ulBissHandle, 5000, ulDummyHigh, ulDummyLow, ulTimeDummy, ulStatusDummy);

		if (ulError)
			cout << "Data Acquisition failed!"<< endl;
		else
		{
			//Get slavedata from last ReadSCDFrames
			for (unsigned long ulFrameIndex = 0; ulFrameIndex < ulNumberOfCycles; ulFrameIndex++)
			{
				ulError = BISS_GetSCDFrame(ulBissHandle, ulFrameIndex, ulDummyHigh, ulDummyLow, ulTimeDummy, ulStatusDummy);
				if (ulError)
				{
					//Release the handle and terminate established connections
					BISS_Close(ulBissHandle);
					return ulError;
				}
				//Get data from BiSS frame. Remove Error and Warning. CRC is already tested and removed from BiSS-DLL
				pulaDUT[ulFrameIndex] = (ulDummyLow[0] >>2);
				pulaReference[ulFrameIndex] = (ulDummyLow[1] >> 2);
			}
		}
	}

	//Release the handle and terminate established connections
	BISS_Close(ulBissHandle);

	return ulError;
}

//Example for a calibration with external data. 
int main()
{
	unsigned long ulError;


	unsigned long ulaDUTRaw[CYCLECNT];
	unsigned long ulaReference[CYCLECNT];

	//Get external data via BiSS-DLL
	ulError = Measure(CYCLECNT, ulaDUTRaw, ulaReference);

	unsigned long ulMHMHandle;
	MHM_Open(&ulMHMHandle);
	//Get the version of the DLL
	unsigned long ulaVersion[2];
	MHM_GetDLLVersion(ulaVersion);
	cout << "MHM1SL_interface.dll Version: " << ulaVersion[1] << "." << ulaVersion[0] << endl;

	//Set interface is needed, because analog function check for usefull interfaces
	ulError = MHM_SetInterface(ulMHMHandle, eMHM_MB4U, "");

	//Setting analog calib config
	ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_REF_TYPE, eMHM_REF_EXTERNAL);	//Set to external reference, use MHM_ReferenceEnum
	ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_QUALITY_CHECK, 0);			//Deactivate signal quality check when using an external reference
	ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_REF_RES, 65536);				//Set reference resolution to 16Bit
	ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_REF_PER, 1);					//Set reference period to 1 per revolution


	//Convert measured data from unsigned long to long
	long laDUTRaw[CYCLECNT],laRefRaw[CYCLECNT];
	for (int i = 0; i< CYCLECNT; i++)
	{
		laDUTRaw[i] = ulaDUTRaw[i];
		laRefRaw[i] = ulaReference[i];
	}

	//Setting measured data
	ulError = MHM_SetCalData(ulMHMHandle, eMHM_DUTRAW,  CYCLECNT, laDUTRaw);	//Setting MHM (DUT) raw data
	ulError = MHM_SetCalData(ulMHMHandle, eMHM_REFRAW,  CYCLECNT, laRefRaw);	//Setting LGC (reference) raw data 

	long lSinOffset, lCosOffset, lGainCorr, lHarm4;
	//Analyze analog signals 
	//The analyses will only work properly, if the Raw Data of the iC-MHM was acquired with the correct 
	//configuration(see description of function MHM_ActivateCalCfg in the iC-MHM DLL LIBRARY DESCRIPTION).
	ulError = MHM_AnalyzeData(ulMHMHandle);
	if (ulError)
	{
		cout <<"Analysis failed!" << endl;
	}
	else
	{
		// Show results
		//Get relative calib parameters
		MHM_GetCalParam(ulMHMHandle, eMHM_CAL_SINOFF, &lSinOffset);
		MHM_GetCalParam(ulMHMHandle, eMHM_CAL_COSOFF,  &lCosOffset);
		MHM_GetCalParam(ulMHMHandle, eMHM_CAL_GAINCOSCORR,  &lGainCorr);
		MHM_GetCalParam(ulMHMHandle, eMHM_CAL_HARM4, &lHarm4);

		cout << " Analysis MHM: " << endl;

		cout << "SinOff: \t"<< double(lSinOffset) << endl;
		cout << "CosOff: \t"<< double(lCosOffset) << endl;
		cout << "Gain:   \t"<< double(lGainCorr) << endl;
		cout << "Harm4:  \t"<< double(lHarm4) << endl;
		cout << "----------------------------------------------------------" <<endl;
	}

	//Adjust the parameters to the MHM-DLL only
	ulError = MHM_Adjust(ulMHMHandle, eMHM_SETONLY);
	//Save adjusted config if needed. Could be used to load the config to the MHM afterwards.
	ulError = MHM_SaveParams(ulMHMHandle, "c:\\temp\\MHM_adjusted_config.cfg");

	//Save measured data
	long DUTCont[CYCLECNT];
	long DUTError[CYCLECNT];
	long RefCont[CYCLECNT];
	long AdjDUT[CYCLECNT];
	unsigned long ulNroBy= CYCLECNT;

	ulError = MHM_GetCalData(ulMHMHandle,eMHM_REFCONT, &ulNroBy, RefCont);
	ulError = MHM_GetCalData(ulMHMHandle,eMHM_DUTCONT, &ulNroBy, DUTCont);
	ulError = MHM_GetCalData(ulMHMHandle,eMHM_DUTERR, &ulNroBy, DUTError);
	ulError = MHM_GetCalData(ulMHMHandle,eMHM_ADJERR, &ulNroBy, AdjDUT);

	//Exporting measurement data to a log file
	ofstream ofsFile;
	ostringstream osValue;
	ofsFile.open ("c:\\temp\\MHM_ref_meas.txt", ofstream::out);
	bool bAccessTest = ofsFile.is_open();
	if (!bAccessTest)
	  return eMHM_FILE_ACCESS_DENIED;
	osValue.fill('0');
	osValue.clear();

	osValue.str("");
	osValue<<"DUTRAW, REFRAW, REFCONT, DUTCONT, DUTERROR, ADJUSTDUT"<< endl;
	for (int i=0; i<CYCLECNT;i++)
	{
		osValue<<laDUTRaw[i]<<","<<laRefRaw[i]<<",";
		osValue<<RefCont[i]<<","<<DUTCont[i]<<","<<DUTError[i]<<","<<AdjDUT[i]<<endl;
	}
	ofsFile << osValue.str() << endl;
	ofsFile.close();
	

	MHM_Close(ulMHMHandle);
}
