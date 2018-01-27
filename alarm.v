`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:19 08/27/2016 
// Design Name: 
// Module Name:    alarm_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alarm(
    input N,
    input X,
    input W,
    input D,
    input G,
    output A
    );

	// Complete the design of the home alarm system

	// (N*-X) * !(W*D*G) = A
	// primitive gates (NAD,OR,NOT,NAND,...)
	// define primitate gate syntax:
	// gate_name instance_name(output,inputs)
	// 
	// wire
	// define internal signals
	
	// defining wire for not b
	wire X_b;
	
	//define logic on x inversion
	not u0(X_b, X);
	
	//wire and gate for enabled and not X (out of house)
	wire en;
	and u1(en,X_b,N);
	
	wire dg_out;
	wire dgw_out;
	wire not_dgw;
	and u2(dg_out,D,G);
	and u3(dgw_out,dg_out,W);
	not u4(not_dgw,dgw_out);
	
	and u5(A,not_dgw,en);
	
	
	

endmodule
