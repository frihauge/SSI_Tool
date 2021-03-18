//Software and its documentation is provided by iC-Haus GmbH or contributors "AS IS" and is 
//subject to the ZVEI General Conditions for the Supply of Products and Services with iC-Haus
//amendments and the ZVEI Software clause with iC-Haus amendments (http://www.ichaus.de/EULA).


#ifdef __cplusplus
extern "C" {
#endif

#include "MHM_1SL_defs.h"


	unsigned long __stdcall MHM_Open(unsigned long *pulMHMHandle);

	unsigned long __stdcall MHM_Close(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_SetInterface(unsigned long ulMHMHandle,
		unsigned long ulInterface,
		char *pcInterfaceOption);

	unsigned long __stdcall MHM_GetInterface(unsigned long ulMHMHandle,
		unsigned long *pulInterface);

	unsigned long __stdcall MHM_SetConfig(unsigned long ulMHMHandle,
		unsigned long ulConfig,
		unsigned long ulValue);

	unsigned long __stdcall MHM_GetConfig(unsigned long ulMHMHandle,
		unsigned long ulConfig,
		unsigned long *pulValue);	

	unsigned long __stdcall MHM_Initialize(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_SwitchToBiss(unsigned long ulMHMHandle,
		unsigned long *pulEnSsi);

	unsigned long __stdcall MHM_SetParam(unsigned long ulMHMHandle,
		unsigned long ulParam,
		unsigned long ulValue,
		unsigned long ulWriteVerify);

	unsigned long __stdcall MHM_GetParam(unsigned long ulMHMHandle,
		unsigned long ulParam,
		unsigned long *pulValue);

	unsigned long __stdcall MHM_WriteParams(unsigned long ulMHMHandle,
		unsigned long ulVerify,
		unsigned long *pulValid);

	unsigned long __stdcall MHM_ReadParams(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_GetCorrectedRegisters(unsigned long ulMHMHandle,
		unsigned long *pulCorrected);

	unsigned long __stdcall MHM_WriteEeprom(unsigned long ulMHMHandle,
		unsigned long ulEepromArea);

	unsigned long __stdcall MHM_ReadEeprom(unsigned long ulMHMHandle,
		unsigned long ulEepromArea);
		
	unsigned long __stdcall MHM_ReadSens(unsigned long ulMHMHandle,
		MHM_ReadSensStruct *pSensorDataStruct);

	unsigned long __stdcall MHM_ReadGainRegister( unsigned long ulMHMHandle, 
		unsigned long *pulGain);

	unsigned long __stdcall MHM_ReadStatusRegister (unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_WriteCommand (unsigned long ulMHMHandle, 
		unsigned long ulCommand);

	unsigned long __stdcall MHM_Preset (unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_WritePorts (unsigned long ulMHMHandle, 
		unsigned long ulPorts);

	unsigned long __stdcall MHM_ReadPorts (unsigned long ulMHMHandle, 
		unsigned long *pulPorts);
		
	unsigned long __stdcall MHM_SaveParams(unsigned long ulMHMHandle,
		char *pcFilename);

	unsigned long __stdcall MHM_LoadParams(unsigned long ulMHMHandle,
		char *pcFilename);

	unsigned long __stdcall MHM_GetDLLVersion(unsigned long *pulDllVersion);

	unsigned long __stdcall MHM_GetLastError(unsigned long ulMHMHandle, 
		unsigned long *pulLastError, 
		unsigned long *pulErrorType, 
		char *pcErrorText );
	
	//optional functions
	unsigned long __stdcall MHM_SetRegister(unsigned long ulMHMHandle,
		unsigned long ulAdr,
		unsigned long ulValue,
		unsigned long ulWriteVerify);

	unsigned long __stdcall MHM_GetRegister(unsigned long ulMHMHandle,
		unsigned long ulAdr,
		unsigned long *pulValue);

	unsigned long __stdcall MHM_WriteRegister ( unsigned long ulMHMHandle,
		unsigned long ulAdr,
		unsigned long *pulNumberOfBytes,
		unsigned long *pulData);

	unsigned long __stdcall MHM_ReadRegister( unsigned long ulMHMHandle,
		unsigned long ulAdr,
		unsigned long *pulNumberOfBytes,
		unsigned long *pulData);

	unsigned long __stdcall MHM_SaveRegister(unsigned long ulMHMHandle,
		char *pcFilename,
		unsigned long ulAdr,
		unsigned long *pulNumberOfBytes,
		unsigned long *pulData);

	unsigned long __stdcall MHM_LoadRegister(unsigned long ulMHMHandle,
		char *pcFilename,
		unsigned long ulAdr,
		unsigned long *pulNumberOfBytes,
		unsigned long *pulData);

	unsigned long __stdcall  MHM_GetInterfaceInfo(unsigned long ulMHMHandle,
		unsigned long ulIndex,
		char *pcInterfaceInfo);

	unsigned long __stdcall MHM_SetEdsParam(unsigned long ulMHMHandle,
		unsigned long ulParam,
		unsigned long ulValue);

	unsigned long __stdcall MHM_GetEdsParam(unsigned long ulMHMHandle,
		unsigned long ulParam,
		unsigned long *pulValue);

	unsigned long __stdcall MHM_ReadEdsParams(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_UpdateEDS(unsigned long ulMHMHandle);
	
	unsigned long __stdcall MHM_SpiActivate(unsigned long ulMHMHandle, 
		unsigned long ulData);

	unsigned long __stdcall MHM_WriteRegister_I2C(unsigned long ulMHMHandle,
		unsigned long ulAdr,
		unsigned long ulNumberOfBytes,
		unsigned long ulI2CSlaveAdr,
		unsigned long *pulData);

	unsigned long __stdcall MHM_WriteRegister_I2C_Ex(unsigned long ulMHMHandle,
		unsigned long ulArraySize,
		unsigned long ulI2CSlaveAdr,
		unsigned long *pulData,
		unsigned long *pulValid);

	unsigned long __stdcall MHM_ReadRegister_I2C(unsigned long ulMHMHandle,
		unsigned long ulAdr,
		unsigned long ulNumberOfBytes,
		unsigned long ulI2CSlaveAdr,
		unsigned long *pulData);

	unsigned long __stdcall MHM_LoadRegisterEx(unsigned long ulMHMHandle,
		char *pcFilename,
		unsigned long ulArraySize,
		unsigned long *pulData,
		unsigned long *pulValid);

	unsigned long __stdcall MHM_SaveRegisterEx(unsigned long ulMHMHandle,
		char *pcFilename,
		unsigned long ulAdr,
		unsigned long ulNumberOfBytes,
		unsigned long *pulData);


	//Calibration Functions
	unsigned long __stdcall MHM_FullCalibration(unsigned long ulMHMHandle, 
		unsigned long ulCycles);

	unsigned long __stdcall MHM_FullAcquisition(unsigned long ulMHMHandle, 
		unsigned long ulCycles);

	unsigned long __stdcall MHM_SetCalCfg(unsigned long ulMHMHandle, 
		unsigned long ulConfig, 
		long lValue);

	unsigned long __stdcall MHM_GetCalCfg(unsigned long ulMHMHandle, 
		unsigned long ulConfig, 
		long *plValue);

	unsigned long __stdcall MHM_AdjustGain(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_ActivateCalCfg(unsigned long ulMHMHandle);
		
	unsigned long __stdcall MHM_AcquireEx(unsigned long ulMHMHandle, 
		unsigned long ulCycles);
		
	unsigned long __stdcall MHM_DeactivateCalCfg(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_AnalyzeData(unsigned long ulMHMHandle);

	unsigned long __stdcall MHM_Adjust(unsigned long ulMHMHandle, unsigned long ulWriteVerify);
	
	unsigned long __stdcall MHM_GetCalParam(unsigned long ulMHMHandle, 
		unsigned long ulParam, 
		long *plData);

	unsigned long __stdcall MHM_SetCalData(unsigned long ulMHMHandle, 
		unsigned long ulParam, 
		unsigned long ulNumberOfBytes,
		long *plData);

	unsigned long __stdcall MHM_GetCalData(unsigned long ulMHMHandle, 
		unsigned long ulParam, 
		unsigned long *pulNumberOfBytes,
		long *plData);	


#ifdef __cplusplus
}
#endif