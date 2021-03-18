#include "MHM_1SL_interface.h"
#include <iostream>
using namespace std;
unsigned long ulMHMHandle;

int main()
{
	unsigned long ulaVersion[2];
	unsigned long ulError;

	//Get the version number of the DLL
	MHM_GetDLLVersion(ulaVersion);
	cout << "MHM_1SL_interface.dll Version: " << ulaVersion[1] << "." << ulaVersion[0] << endl << endl;

	//Load the library and get a handle that will be used for subsequent accesses.
	ulError = MHM_Open(&ulMHMHandle);


	//Set the DLL properties (BiSS Master Clock Frequency for Single Cycle Data)
	//p.e. FREQ_SCD = 2 MHz @ MB4U
	ulError = MHM_SetConfig(ulMHMHandle, eMHM_FREQ_SCD, 4);

	//Connect the interface MB4U
	ulError = MHM_SetInterface(ulMHMHandle, eMHM_MB4U, "");
		
	if (ulError)
	{
		switch (ulError){
			case eMHM_INTERFACEDRIVER_NOT_FOUND:
				cout << "MHM_SetInterface failed (eMHM_INTERFACEDRIVER_NOT_FOUND):" << endl
				<< "Install FTDI Interface Drivers" << endl; break;
			case eMHM_INTERFACE_NOT_FOUND: 
				cout << "MHM_SetInterface failed (eMHM_INTERFACE_NOT_FOUND): " << endl 
				<< "Check wire connections and power supply" << endl; break;
			default: 
				cout << "MHM_SetInterface failed (errorcode: " << ulError << ")" 
				<< endl; break;
		}
	}
	else
	{
		cout << "Interface MB4U opened" << endl << endl;

		ulError = MHM_Initialize(ulMHMHandle);

		//Read registers from the iC-MHM to the DLL
		ulError = MHM_ReadParams(ulMHMHandle);
		if (ulError)
			cout << "Could not read Params!" << endl;
		else
		{

			//then read the position values from the iC-MHM
			MHM_ReadSensStruct ReadSensData;
			ulError = MHM_ReadSens(ulMHMHandle, &ReadSensData);
		
			//Set some parameters to the DLL and write the corresponding register to the iC-MHM immediately
			ulError = MHM_SetParam(ulMHMHandle, eMHM_OFFS_MT, 1, eMHM_WRITE);
			ulError = MHM_SetParam(ulMHMHandle, eMHM_GAINF, 0, eMHM_WRITE);

			//Get all iC-MHM parameter from the DLL
			unsigned long ulParamValue;
			for (int iCnt=0; iCnt<=62; iCnt++)
			{
				ulError = MHM_GetParam(ulMHMHandle, iCnt, &ulParamValue);
				cout << "Param(" << dec << iCnt << "): 0x" << hex << ulParamValue << endl;
			}
			
		}

	}

	//Release the handle and terminate established connections
	MHM_Close(ulMHMHandle);
}
