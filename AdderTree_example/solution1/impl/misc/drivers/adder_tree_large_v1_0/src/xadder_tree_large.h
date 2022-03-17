// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XADDER_TREE_LARGE_H
#define XADDER_TREE_LARGE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xadder_tree_large_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XAdder_tree_large_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XAdder_tree_large;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAdder_tree_large_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAdder_tree_large_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAdder_tree_large_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAdder_tree_large_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAdder_tree_large_Initialize(XAdder_tree_large *InstancePtr, u16 DeviceId);
XAdder_tree_large_Config* XAdder_tree_large_LookupConfig(u16 DeviceId);
int XAdder_tree_large_CfgInitialize(XAdder_tree_large *InstancePtr, XAdder_tree_large_Config *ConfigPtr);
#else
int XAdder_tree_large_Initialize(XAdder_tree_large *InstancePtr, const char* InstanceName);
int XAdder_tree_large_Release(XAdder_tree_large *InstancePtr);
#endif

void XAdder_tree_large_Start(XAdder_tree_large *InstancePtr);
u32 XAdder_tree_large_IsDone(XAdder_tree_large *InstancePtr);
u32 XAdder_tree_large_IsIdle(XAdder_tree_large *InstancePtr);
u32 XAdder_tree_large_IsReady(XAdder_tree_large *InstancePtr);
void XAdder_tree_large_EnableAutoRestart(XAdder_tree_large *InstancePtr);
void XAdder_tree_large_DisableAutoRestart(XAdder_tree_large *InstancePtr);

void XAdder_tree_large_Set_n(XAdder_tree_large *InstancePtr, u32 Data);
u32 XAdder_tree_large_Get_n(XAdder_tree_large *InstancePtr);

void XAdder_tree_large_InterruptGlobalEnable(XAdder_tree_large *InstancePtr);
void XAdder_tree_large_InterruptGlobalDisable(XAdder_tree_large *InstancePtr);
void XAdder_tree_large_InterruptEnable(XAdder_tree_large *InstancePtr, u32 Mask);
void XAdder_tree_large_InterruptDisable(XAdder_tree_large *InstancePtr, u32 Mask);
void XAdder_tree_large_InterruptClear(XAdder_tree_large *InstancePtr, u32 Mask);
u32 XAdder_tree_large_InterruptGetEnabled(XAdder_tree_large *InstancePtr);
u32 XAdder_tree_large_InterruptGetStatus(XAdder_tree_large *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
