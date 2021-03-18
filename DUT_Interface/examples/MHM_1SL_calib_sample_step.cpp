#include "MHM_1SL_interface.h"
#include <iostream>
using namespace std;
unsigned long ulMHMHandle;

unsigned long Measure( unsigned long ulPoints );

int main()
{
	unsigned long ulaVersion[2];
	unsigned long ulError;

	MHM_GetDLLVersion(ulaVersion);
	//Get the version number of the DLL
	cout << "MHM_1SL_interface.dll Version: " << ulaVersion[1] << "." << ulaVersion[0] << endl << endl;

	//Load the library and get a handle that will be used for subsequent accesses.
	ulError = MHM_Open(&ulMHMHandle);

	//Connect the interface MB4U, chip interface must be in BiSS Mode.
	ulError = MHM_SetInterface(ulMHMHandle, eMHM_MB4U, "");
	if (ulError) 
		cout << "MHM_SetInterface failed (errorcode: " << ulError << ")" << endl;
	else 
	{
		cout << "Interface opened" << endl << endl;
		// Initialize
		ulError = MHM_Initialize(ulMHMHandle);
		//Read Ram of MHM
		ulError = MHM_ReadParams(ulMHMHandle);
		// Set ags time to approx 100us
		ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_FREQ_AGS, 0x63);	
		// Set Frequence to 2 MHz
		ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_FREQ_SCD, 0x04);	
		// Set reference to Moving Acceleration
		ulError = MHM_SetCalCfg(ulMHMHandle, eMHM_CAL_REF_TYPE, eMHM_CONST_VELOCITY); //Filter type of the analysis, use MHM_ReferenceEnum

		//-------------------------------------------------------------
		//----------------ANALOG CALIBRATION Step by Step--------------
		//-------------------------------------------------------------

		// FullMeasurement
		unsigned long ulCycles = 2000;
		long lSinOffset, lCosOffset, lGainCorr, lHarm4, lRPM;
		unsigned long ulErrortemp = eMHM_OK;
		unsigned int uiIterations = 3;

		cout << endl << "----------------------------------------------------------" << endl;
		cout <<			"---------------------Analog Calibration-------------------" << endl;
		cout  <<		"----------------------------------------------------------" << endl;

		//Depending on the signal quality, the reference quality and the filter settings, the Calibration will need some iterations to find the best Configuration for the MHM
		for (unsigned int uiRun=0; uiRun< uiIterations; uiRun++)
		{

			//activate Acquisition Config 
			ulError = MHM_ActivateCalCfg(ulMHMHandle);
			if(ulError == 0){
				//Acquire raw position data
				ulErrortemp = MHM_AcquireEx(ulMHMHandle , ulCycles);

				//restore to original config 
				ulError = MHM_DeactivateCalCfg(ulMHMHandle);
			}
		
			if((ulError != 0)||(ulErrortemp != 0))
				cout<< " Acquisition Failed !"<< endl;
			else
			{
				//Analyze analog signals
				ulError = MHM_AnalyzeData(ulMHMHandle);
			
				if(ulError)
					cout<< " Analog analysis failed !"<< endl;
				else
				{
					//Show Results
					//Get calib parameter 
					MHM_GetCalParam(ulMHMHandle, eMHM_CAL_SINOFF, &lSinOffset);
					MHM_GetCalParam(ulMHMHandle, eMHM_CAL_COSOFF, &lCosOffset);
					MHM_GetCalParam(ulMHMHandle, eMHM_CAL_GAINCOSCORR,  &lGainCorr);
					MHM_GetCalParam(ulMHMHandle, eMHM_CAL_HARM4,  &lHarm4);
					MHM_GetCalParam(ulMHMHandle, eMHM_CAL_RPM,  &lRPM);

					cout << " Acquisition Run " << uiRun + 1 << endl;
					cout << "SinOff: \t"<< lSinOffset <<	endl;
					cout << "CosOff: \t"<< lCosOffset <<	endl;
					cout << "Gain:   \t"<< lGainCorr <<		endl;
					cout << "Harm4:  \t"<< lHarm4 <<		endl;
					cout << "RPM:	\t" << lRPM <<			endl;
					cout << "----------------------------------------------------------" <<endl;
				}
			}
		
			if (uiRun < uiIterations-1)
			{
				//Adjust MHM
				ulError = MHM_Adjust(ulMHMHandle, eMHM_WRITE);
				cout << endl << "----------------------------------------------------------" <<endl;
				if(ulError)
					cout << " Adjustment Failed! " << endl ;
				else
					cout << " MHM Adjusted " << endl ;
				cout << endl << "----------------------------------------------------------" <<endl;
			}
		}
	}
	MHM_Close(ulMHMHandle);
}