////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2004 Xilinx, Inc.
// All Rights Reserved
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: 1.01
//  \   \         Filename: embedded_kcpsm3.v
//  /   /         Date Last Modified:  08/04/2004
// /___/   /\     Date Created: 06/03/2003
// \   \  /  \
//  \___\/\___\
//
//Device:  	Xilinx
//Purpose: 	
// 	This file instantiates the KCPSM3 processor macro and connects the 
//	program ROM.
//Reference:
// 	None
//Revision History:
//    Rev 1.00 - kc - Start of design entry in VHDL,  06/03/2003.
//    Rev 1.01 - sus - Converted to verilog,  08/04/2004.
////////////////////////////////////////////////////////////////////////////////
// NOTE: The name of the program ROM will probably need to be changed to 
//       reflect the name of the program (PSM) file applied to the assembler.
////////////////////////////////////////////////////////////////////////////////
// Contact: e-mail  picoblaze@xilinx.com
//////////////////////////////////////////////////////////////////////////////////
//
// Disclaimer: 
// LIMITED WARRANTY AND DISCLAIMER. These designs are
// provided to you "as is". Xilinx and its licensors make and you
// receive no warranties or conditions, express, implied,
// statutory or otherwise, and Xilinx specifically disclaims any
// implied warranties of merchantability, non-infringement, or
// fitness for a particular purpose. Xilinx does not warrant that
// the functions contained in these designs will meet your
// requirements, or that the operation of these designs will be
// uninterrupted or error free, or that defects in the Designs
// will be corrected. Furthermore, Xilinx does not warrant or
// make any representations regarding use or the results of the
// use of the designs in terms of correctness, accuracy,
// reliability, or otherwise.
//
// LIMITATION OF LIABILITY. In no event will Xilinx or its
// licensors be liable for any loss of data, lost profits, cost
// or procurement of substitute goods or services, or for any
// special, incidental, consequential, or indirect damages
// arising from the use or operation of the designs or
// accompanying documentation, however caused and on any theory
// of liability. This limitation will apply even if Xilinx
// has been advised of the possibility of such damage. This
// limitation shall apply not-withstanding the failure of the 
// essential purpose of any limited remedies herein. 
//////////////////////////////////////////////////////////////////////////////////



module alarm_top(CLKPORT,BTN3,BTN2,BTN1,BTN0,
						CA,CB,CC,CD,CE,CF,CG,DP,AN0,AN1,AN2,AN3,
						LD7,LD6,LD5,LD4,LD3,LD2,LD1,LD0,
						SW0,SW1,SW2,SW3,SW4,SW5,SW6,SW7);

input 	BTN3, BTN2, BTN1, BTN0, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7;
input 	CLKPORT;
output LD7,LD6,LD5,LD4,LD3,LD2,LD1,LD0;
output CA,CB,CC,CD,CE,CF,CG,DP,AN0,AN1,AN2,AN3;

wire alarm;

assign {LD7,LD6,LD5,LD4,LD3,LD2,LD1,LD0} = {8{alarm}};
assign {CA,CB,CC,CD,CE,CF,CG,DP} = 8'hff;
assign {AN0,AN1,AN2,AN3} = 4'h0;

alarm uut(
	.N(SW7),
	.X(SW6),
	.W(SW2),
	.D(SW1),
	.G(SW0),
	.A(alarm));
	
			

endmodule



