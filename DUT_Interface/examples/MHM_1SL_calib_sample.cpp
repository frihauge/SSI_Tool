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

		// Initialize
		ulError = MHM_Initialize(ulMHMHandle);

		//afterwards read all registers from the iC-MH to the DLL
		ulError = MHM_ReadParams(ulMHMHandle);

		//Setting Calib parameters
		ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_REF_TYPE, eMHM_CONST_VELOCITY); //Filter type of the analysis, use MHM_ReferenceEnum
		ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_FREQ_SCD, 0x04);	//2Mhz Clock
		ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_FREQ_AGS, 0x63);	//100us Frame repetition rate

		//One full Acquisition
		ulError = MHM_FullAcquisition(ulMHMHandle, 2000);

		long lSin_Off, lCos_Off, lGainC, lRPM, lHarm4; 
		if (ulError == eMHM_OK)
		{
			ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_SINOFF, &lSin_Off);
			ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_COSOFF, &lCos_Off);
			ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_GAINCOSCORR, &lGainC);
			ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_HARM4, &lHarm4);
			ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_RPM, &lRPM);
			cout << "First Acquisition"<< endl;
		
			cout << "SinOff: "<< double(lSin_Off) << "\t| Cos_Off: "<< double(lCos_Off) << "\t| GainC: "<<double(lGainC) << "\t| Harm4: "<<double(lHarm4) << "\t| RPM: "<<double(lRPM) << endl << endl;
		}

		//full Calibration
		unsigned int uiIteration=4;
		for (unsigned int uiRun =0 ; uiRun <uiIteration; uiRun++){

			ulError = MHM_FullCalibration(ulMHMHandle, 2000);
			if (ulError != eMHM_OK){
				cout << "Calibration failed";
				uiRun = uiIteration;
			}
			else
			{
				ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_SINOFF, &lSin_Off);
				ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_COSOFF, &lCos_Off);
				ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_GAINCOSCORR, &lGainC);
				ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_HARM4, &lHarm4);
				ulError = MHM_GetCalParam(ulMHMHandle, eMHM_CAL_RPM, &lRPM);
				cout<<"-----------------------------------------------------------------"<< endl;
				cout << "Calibration Run "<<double (uiRun+1)<< endl;
				cout << "SinOff: "<< double(lSin_Off) << "\t| Cos_Off: "<< double(lCos_Off) << "\t| GainC: "<<double(lGainC) << "\t| Harm4: "<<double(lHarm4) << "\t| RPM: "<<double(lRPM) << endl << endl;
				//If the changes are not bigger then 1Digit, the Calibration was succesful and stable
			}

		}
	}

	//Release the handle and terminate established connections
	MHM_Close(ulMHMHandle);
}
