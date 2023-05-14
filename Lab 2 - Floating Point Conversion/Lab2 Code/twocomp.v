`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:26 04/24/2023
// Design Name:   twoCompToSignMag
// Module Name:   C:/Users/Student/Desktop/Group6Lab2/lab2/twocomp.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twoCompToSignMag
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twocomp;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire [11:0] absVal;
	wire sign;

	// Instantiate the Unit Under Test (UUT)
	twoCompToSignMag uut (
		.D(D), 
		.absVal(absVal), 
		.sign(sign)
	);

	initial begin
		// Initialize Inputs
		D = 12'd5;
		#5
		$display("%12b : %12b", D, absVal);
		D = 12'b111111111000;
		#5
		$display("%12b : %12b", D, absVal);
		D = 12'b100000000000;
		#5
		$display("%12b : %12b", D, absVal);
		D = 12'b000000000000;
		#5
		$display("%12b : %12b", D, absVal);
		D = 12'b111111111111;
		#5
		$display("%12b : %12b", D, absVal);
        
		// Add stimulus here

	end
      
endmodule

