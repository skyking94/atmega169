//////////////////////////////////////////////////////////////////////////////////////////
//                                                                                      //
//                                                                                      //
//                                                                                      //
//                                                                                      //                                                                                      //
//                                                                                      //
//                                                                                      //
//                                                                                      //
//                                ATmega 169 Defines Code                               //                                                                                      //
//                            By Aakash Shah & Prachi Patki                             //
//                                                                                      //
//                                                                                      //
//                                                                                      //
//                                                                                      //
//                                                                                      //
//                                     Version 1.0                                      //
//                                      May, 2018                                       //
//                                                                                      //
//                                                                                      //
//////////////////////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////////////////
// Company:                   Eclipse Lab
// Engineer:                  Aakash Shah, Prachi Patki
//
// Create Date:               03/31/2018
// Design Name:               ATmega 169
// Module Name:
// Project Name:              ATMEL ATmega 169
// Target Devices:
// Tool versions:
// Description:               Defines File
//
// Dependencies:
//
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////////////////////
//                                      REVISIONS                                       //
//////////////////////////////////////////////////////////////////////////////////////////
//
// 0.01 - Original Draft
//
//
//
//
//
//
//
//
//////////////////////////////////////////////////////////////////////////////////////////



//========================================================================================
//                                ALU INSTRUCTIONS OPCODE
//========================================================================================

//MICROCONTROLLER CPU CONTROL INSTRUCTIONS
`define NOP				00	//NOP
`define SLEEP			01	//SLEEP
`define WTCH_DOG_RST	02	//WDR
`define BREAK			03	//BREAK

//PORT IO INSTRUCTIONS
`define PORT_IN			04	//IN
`define PORT_OUT		05	//OUT

//STACK IO INSTRUCTIONS
`define PUSH			06	//PUSH
`define POP				07	//POP

//FLAG BIT LOAD AND STORE INSTRUCTIONS
`define BIT_STR_T		08	//BST
`define BIT_LD_T		09	//BLD

//ARITHEMETIC AND LOGIC INSTRUCTIONS
`define ADD_SIMPLE		10	//ADD
`define ADD_WITH_C		11	//ADC
`define ADD_IMM_WRD		12	//ADIW
`define SUB_SIMPLE		13	//SUB
`define SUB_CONST		14	//SUBI
`define SUB_WITH_C		15	//SBC
`define SUB_CONST_C		16	//SBCI
`define SUB_IMM_WRD		17	//SBIW
`define AND_SIMPLE		18	//AND
`define AND_CONST		19	//ANDI
`define OR_SIMPLE		20	//OR
`define OR_CONST		21	//ORI
`define XOR_SIMPLE		22	//EOR
`define ONES_COMP		23	//COM
`define TWOS_COMP		24	//NEG
`define SET_REG_BIT		25	//SBR
`define CLR_REG_BIT		26	//CBR
`define INC_REG			27	//INC
`define DEC_REG			28	//DEC
`define TEST_REG		29	//TST				
`define SET_REG 		30  //SER
`define CLR_REG 		31	//CLR
`define MUL_SIMPLE		32	//MUL
`define MUL_SIGND		33	//MULS
`define MUL_UNSIGND		34	//MULSU
`define FMUL_SIMPLE		35	//FMUL - FRACTIONAL MULTIPLY
`define FMUL_SIGND		36	//FMULS
`define FMUL_UNSIGNED	37	//FMULSU


//----------BRANCH INSTRUCTIONS-------------------------------

//JUMP INSTRUCTIONS
`define REL_JUMP		38	//RJMP
`define IND_JUMP		39	//IJMP
`define DIR_JUMP		40	//JMP

//SUBROUTINE JUMPS
`define REL_CALL		41	//RCALL
`define IND_CALL		42	//ICALL
`define DIR_CALL		43	//CALL

//RETURN FROM SUBROUTINE
`define RETURN			44	//RET
`define RETURN_I		45	//RETI

//JUMP AFTER COMPARE
`define CMP_SKIP_EQ		46	//CPSE
`define COMPARE			47	//CP
`define COMPARE_C		48	//CPC
`define COMPORE_CONST	49	//CPI

//SKIP INSTRUCTIONS
`define SKP_BIT_CLR		50	//SBRC
`define SKP_BIT_SET		51	//SBRS
`define SKP_BIT_CLR_IO	52	//SBIC
`define SKP_BIT_SET_IO	53	//SBIS

//BRANCH INSTRUCTIONS
`define BRNCH_FLG_SET	54	//BRBS
`define BRNCH_FLG_CLR	55	//BRBC
`define BRNCH_EQ		56	//BREQ
`define BRNCH_NEQ		57	//BRNE
`define BRNCH_CRY_SET	58	//BRCS
`define BRNCH_CRY_CLR	59	//BRCC
`define BRNCH_GE 		60	//BRSH - SAME OR HIGHER
`define BRNCH_LWR		61	//BRLO
`define BRNCH_MI		62	//BRMI
`define BRNCH_PL		63	//BRPL
`define BRNCH_GE_S		64	//BRGE
`define BRNCH_BLW_0		65	//BRLT
`define BRNCH_HC_SET	66	//BRHS
`define BRNCH_HC_CLR	67	//BRHC
`define BRNCH_T_SET		68	//BRTS
`define BRNCH_T_CLR		69	//BRTC
`define BRNCH_V_SET		70	//BRVS
`define BRNCH_V_CLR		71	//BRVC
`define BRNCH_I_EN		72	//BRIE
`define BRNCH_I_DS		73	//BRID

//BIT AND BIT-TEST INSTRUCTIONS
`define SET_BIT_IO		74	//SBI
`define CLR_BIT_IO		75	//CBI
`define LEFT_SHIFT		76	//LSL
`define RIGHT_SHIFT		77	//LSR
`define ROTATE_LEFT		78	//ROL
`define ROTATE_RIGHT	79	//ROR
`define ARI_SHIFT_RIGHT	80	//ASR
`define SWAP			81	//SWAP
`define SET_FLAG		82	//BSET
`define CLR_FLAG		83	//BCLR
`define SET_CARRY		84	//SEC
`define CLR_CARRY		85	//CLC
`define SET_NEG			86	//SEN
`define CLR_NEG			87	//CLN
`define SET_ZERO		88	//SEZ
`define CLR_ZERO		89	//CLZ
`define SET_GI 			90	//SEI
`define CLR_GI			91	//CLI
`define SET_TEST		92	//SES
`define CLR_TEST		93	//CLS
`define SET_2COMP		94	//SEV
`define CLR_2COMP		95	//CLV
`define SET_T 			96	//SET
`define CLR_T 			97	//CLT
`define SET_HC			98	//SEH
`define CLR_HC			99	//CLH

//DATA TRANSFER INSTRUCTIONS
`define MOVE_REG		100	//MOV
`define MOVE_WORD		101	//MOVW
`define LOAD_IMM		102	//LDI
`define LOAD_IND		103	//LD -- FOR OTHER VARIANTS USE DIFF PARAMETERS
`define LOAD_IND_DIS	104	//LDD -- FOR OTHER VARIANTS USE DIFF PARAMETERS
`define LOAD_SRAM		105	//LDS
`define STORE_IND		106	//ST -- FOR OTHER VARIANTS USE DIFF PARAMETERS
`define STORE_IND_DIS	107	//STD -- FOR OTHER VARIANTS USE DIFF PARAMETERS
`define STORE_SRAM		108	//STS
`define LOAD_PMEM		109	//LPM -- FOR OTHER VARIANTS USE DIFF PARAMETERS
`define STORE_PMEM		110	//SPM

//DATA TRANSFER VARIANTS DEFINITIONS --




















