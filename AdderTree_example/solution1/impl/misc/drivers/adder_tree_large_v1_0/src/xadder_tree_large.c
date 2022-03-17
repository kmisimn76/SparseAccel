// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xadder_tree_large.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAdder_tree_large_CfgInitialize(XAdder_tree_large *InstancePtr, XAdder_tree_large_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAdder_tree_large_Start(XAdder_tree_large *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAdder_tree_large_IsDone(XAdder_tree_large *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAdder_tree_large_IsIdle(XAdder_tree_large *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAdder_tree_large_IsReady(XAdder_tree_large *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAdder_tree_large_EnableAutoRestart(XAdder_tree_large *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAdder_tree_large_DisableAutoRestart(XAdder_tree_large *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_AP_CTRL, 0);
}

void XAdder_tree_large_Set_n(XAdder_tree_large *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_N_DATA, Data);
}

u32 XAdder_tree_large_Get_n(XAdder_tree_large *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_N_DATA);
    return Data;
}

void XAdder_tree_large_InterruptGlobalEnable(XAdder_tree_large *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_GIE, 1);
}

void XAdder_tree_large_InterruptGlobalDisable(XAdder_tree_large *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_GIE, 0);
}

void XAdder_tree_large_InterruptEnable(XAdder_tree_large *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_IER);
    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_IER, Register | Mask);
}

void XAdder_tree_large_InterruptDisable(XAdder_tree_large *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_IER);
    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAdder_tree_large_InterruptClear(XAdder_tree_large *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAdder_tree_large_WriteReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_ISR, Mask);
}

u32 XAdder_tree_large_InterruptGetEnabled(XAdder_tree_large *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_IER);
}

u32 XAdder_tree_large_InterruptGetStatus(XAdder_tree_large *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAdder_tree_large_ReadReg(InstancePtr->Control_BaseAddress, XADDER_TREE_LARGE_CONTROL_ADDR_ISR);
}

