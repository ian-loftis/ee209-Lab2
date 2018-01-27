`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:52:50 12/29/2016
// Design Name:   alarm
// Module Name:   C:/Users/Mark/Dropbox/EE209/Lab/alarm/alarm_tb.v
// Project Name:  alarm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alarm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alarm_tb;


	// Inputs
	reg N;
	reg X;
	reg W;
	reg D;
	reg G;
	integer in;

	// Outputs
	wire A;

	// Instantiate the Unit Under Test (UUT)
	alarm uut (
		.N(N), 
		.X(X), 
		.W(W), 
		.D(D), 
		.G(G), 
		.A(A)
	);

	initial begin
	
		// Initialize Inputs
		N = 0;
		X = 0;
		W = 1;
		D = 1;
		G = 1; // Start with secure (W,D,G=1,1,1)

		// Wait 100 ns for global reset to finish
		
		
		for(in = 0; in < 32; in = in+1)
		begin
			{N,X,W,D,G} = in;
			#10;
		end
		
		
	end
      
endmodule

