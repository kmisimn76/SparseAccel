// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xadder_tree_large.h"

extern XAdder_tree_large_Config XAdder_tree_large_ConfigTable[];

XAdder_tree_large_Config *XAdder_tree_large_LookupConfig(u16 DeviceId) {
	XAdder_tree_large_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XADDER_TREE_LARGE_NUM_INSTANCES; Index++) {
		if (XAdder_tree_large_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAdder_tree_large_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAdder_tree_large_Initialize(XAdder_tree_large *InstancePtr, u16 DeviceId) {
	XAdder_tree_large_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAdder_tree_large_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAdder_tree_large_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

