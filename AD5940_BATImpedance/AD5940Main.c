/*!
 *****************************************************************************
 @file:    AD5940Main.c
 @author:  Neo Xu
 @brief:   Used to control specific application and process data.
 -----------------------------------------------------------------------------
Copyright (c) 2017-2019 Analog Devices, Inc. All Rights Reserved.
This software is proprietary to Analog Devices, Inc. and its licensors.
By using this software you agree to the terms of the associated
Analog Devices Software License Agreement.
 
*****************************************************************************/
/** 
 * @addtogroup AD5940_System_Examples
 * @{
 *  @defgroup Battery_Example
 *  @{
  */
#include "ad5940.h"
#include <stdio.h>
#include "string.h"
#include "math.h"
#include "BATImpedance.h"
#include <stdbool.h>

#define APPBUFF_SIZE 512
uint32_t AppBuff[APPBUFF_SIZE];

char recvData[32];     // Data from SCIA RX
char recvBuff[32];
bool frecvFreq, NL, freqUpdate;
float recvFloat = 0.0;

extern AppBATCfg_Type AppBATCfg;
const char *TI_ACK = "A5A5\n";     						// receive TI_ACK from 0049
const char *ADI_ACK = "5A5A\n";     					// send ADI_ACK to 0049
const char *AD5940_Init_Done = "ID\n";     		// send initial done to 0049
const char *AD5940_Measure = "MS\n";           	// receive start measure signal from 0049
const char *AD5940_Measure_Done = "MD\n";			// send measure done to 0049

/* It's your choice here how to do with the data. Here is just an example to print them to UART */
int32_t BATShowResult(uint32_t *pData, uint32_t DataCount)
{
  fImpCar_Type *pImp = (fImpCar_Type*)pData;
	float freq;
	float Ztot = 0;
	AppBATCtrl(BATCTRL_GETFREQ, &freq);
  /*Process data*/
  for(int i=0;i<DataCount;i++)
  {
		Ztot = sqrt(pow(pImp[i].Real,2) + pow(pImp[i].Image,2));
//		printf("F\n");
//		printf("%4.2f\n",freq);
//		printf("Z\n");
//		printf("%3.4f\n",Ztot);
		printf("%4.2f %3.4f \r\n",freq, Ztot);
  }
  return 0;
}

/* Initialize AD5940 basic blocks like clock */
static int32_t AD5940PlatformCfg(void)
{
  CLKCfg_Type clk_cfg;
  FIFOCfg_Type fifo_cfg;
  AGPIOCfg_Type gpio_cfg;
  /* Use hardware reset */
  AD5940_HWReset();
  /* Platform configuration */
  AD5940_Initialize();
  /* Step1. Configure clock */
  clk_cfg.ADCClkDiv = ADCCLKDIV_1;
  clk_cfg.ADCCLkSrc = ADCCLKSRC_HFOSC;
  clk_cfg.SysClkDiv = SYSCLKDIV_1;
  clk_cfg.SysClkSrc = SYSCLKSRC_HFOSC; //on battery board, there is a 32MHz crystal.
  clk_cfg.HfOSC32MHzMode = bFALSE;
  clk_cfg.HFOSCEn = bTRUE;
  clk_cfg.HFXTALEn = bFALSE;
  clk_cfg.LFOSCEn = bTRUE;
  AD5940_CLKCfg(&clk_cfg);
  /* Step2. Configure FIFO and Sequencer*/
  fifo_cfg.FIFOEn = bFALSE;
  fifo_cfg.FIFOMode = FIFOMODE_FIFO;
  fifo_cfg.FIFOSize = FIFOSIZE_4KB;                       /* 4kB for FIFO, The reset 2kB for sequencer */
  fifo_cfg.FIFOSrc = FIFOSRC_DFT;
  fifo_cfg.FIFOThresh = 4;//AppBATCfg.FifoThresh;        /* DFT result. One pair for RCAL, another for Rz. One DFT result have real part and imaginary part */
  AD5940_FIFOCfg(&fifo_cfg);                             /* Disable to reset FIFO. */
  fifo_cfg.FIFOEn = bTRUE;  
  AD5940_FIFOCfg(&fifo_cfg);                             /* Enable FIFO here */
  
  /* Step3. Interrupt controller */
  AD5940_INTCCfg(AFEINTC_1, AFEINTSRC_ALLINT, bTRUE);           /* Enable all interrupt in Interrupt Controller 1, so we can check INTC flags */
  AD5940_INTCCfg(AFEINTC_0, AFEINTSRC_DATAFIFOTHRESH, bTRUE);   /* Interrupt Controller 0 will control GP0 to generate interrupt to MCU */
  AD5940_INTCClrFlag(AFEINTSRC_ALLINT);
  /* Step4: Reconfigure GPIO */
  gpio_cfg.FuncSet = GP0_INT|GP2_SYNC;
  gpio_cfg.InputEnSet = AGPIO_Pin2;
  gpio_cfg.OutputEnSet = AGPIO_Pin0|AGPIO_Pin2;
  gpio_cfg.OutVal = 0;
  gpio_cfg.PullEnSet = 0;
  AD5940_AGPIOCfg(&gpio_cfg);
  AD5940_SleepKeyCtrlS(SLPKEY_UNLOCK);  /* Allow AFE to enter sleep mode. */
  return 0;
}

void AD5940BATStructInit(void)
{
  AppBATCfg_Type *pBATCfg;
  AppBATGetCfg(&pBATCfg);
  pBATCfg->SeqStartAddr = 0;
  pBATCfg->MaxSeqLen = 512;
  pBATCfg->RcalVal = 50.0;  							/* Value of RCAL on EVAL-AD5941BATZ board is 50mOhm */
  pBATCfg->ACVoltPP = 300.0f;							/* Pk-pk amplitude is 300mV */
  pBATCfg->DCVolt = 1200.0f;							/* Offset voltage of 1.2V*/
  pBATCfg->DftNum = DFTNUM_8192;
  
  pBATCfg->FifoThresh = 2;      					/* 2 results in FIFO, real and imaginary part. */
	if(recvFloat == 0)
		pBATCfg->SinFreq = 1249.9;									/* Sin wave frequency. THis value has no effect if sweep is enabled */
	pBATCfg->SweepCfg.SweepEn = bFALSE;			/* Set to bTRUE to enable sweep function */
	pBATCfg->SweepCfg.SweepStart = 100.0f;		/* Start sweep at 1Hz  */
	pBATCfg->SweepCfg.SweepStop = 10000.0f;	/* Finish sweep at 1000Hz */
	pBATCfg->SweepCfg.SweepPoints = 20;			/* 100 frequencies in the sweep */
	pBATCfg->SweepCfg.SweepLog = bTRUE;			/* Set to bTRUE to use LOG scale. Set bFALSE to use linear scale */
	
}

void AD5940_ChgSinFreq(float freq){
	AppBATCfg_Type *pBATCfg;
  AppBATGetCfg(&pBATCfg);
	if(freq <= 10.0)
		return;
	pBATCfg->SinFreq = freq;
}

void AD5940_Main(void)
{
  uint32_t temp;
  AD5940PlatformCfg();
	printf(AD5940_Init_Done);								/* Inform TI 0049 initial done */
	
  while(1){
		AD5940BATStructInit(); 								/* Configure your parameters in this function */
		AppBATInit(AppBuff, APPBUFF_SIZE);    /* Initialize BAT application. Provide a buffer, which is used to store sequencer commands */
		AppBATCtrl(BATCTRL_MRCAL, 0);     		/* Measur RCAL of specific point*/
		AppBATCtrl(BATCTRL_START, 0);					/* Measure BAT impedance */
		while(1)
		{
			if(AD5940_GetMCUIntFlag()&&freqUpdate)			    /* Check if interrupt flag which will be set when interrupt occurred, and frequency been updated by UART interrupt */
			{	
				temp = APPBUFF_SIZE;
				AppBATISR(AppBuff, &temp); 			/* Deal with it and provide a buffer to store data we got */
				BATShowResult(AppBuff, temp);		/* Print measurement results over UART */		
				AD5940_ChgSinFreq(recvFloat);		/* Change AppBATCfg.SinFreq to new frequency */
				AD5940_SEQMmrTrig(SEQID_0);  		/* Trigger next measurement ussing MMR write*/
				AD5940_ClrMCUIntFlag(); 				/* Clear this flag */	
				AppBATCfg.bParaChanged = bTRUE;	/* inform AppBATInit parameter had bene changed */
				freqUpdate = false;							/* Clear freqUpdate flag */
				break;													/* Break the second while loop to reset parameters of AppBATCfg */
			}
			AD5940_Delay10us(100);
		}
  }
}

/**
 * @}
 * @}
 * */
