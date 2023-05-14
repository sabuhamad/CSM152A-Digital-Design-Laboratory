`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:29:24 05/01/2023
// Design Name:   linearToExponent
// Module Name:   C:/Users/Student/Desktop/Group6Lab2/lab2/linearToExponentTB.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: linearToExponent
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module linearToExponentTB;

	// Inputs
	reg [11:0] absVal;

	// Outputs
	wire [2:0] exponent;
	wire [3:0] significand;
	wire round_bit;

	// Instantiate the Unit Under Test (UUT)
	linearToExponent uut (
		.absVal(absVal), 
		.exponent(exponent), 
		.significand(significand), 
		.round_bit(round_bit)
	);

	initial begin
		// Initialize Inputs
		absVal = 12'd5;
		#5
		$display("%12b : E%12b : S%12b : R%12b", absVal, exponent, significand, round_bit);
		absVal = 12'b111111111000;
		#5
		$display("%12b : E%12b : S%12b : R%12b", absVal, exponent, significand, round_bit);
		absVal = 12'b100000000000;
		#5
		$display("%12b : E%12b : S%12b : R%12b", absVal, exponent, significand, round_bit);
		absVal = 12'b000000000000;
		#5
		$display("%12b : E%12b : S%12b : R%12b", absVal, exponent, significand, round_bit);
		absVal = 12'b111111111111;
		#5
		$display("%12b : E%12b : S%12b : R%12b", absVal, exponent, significand, round_bit);
		absVal = 12'b000101001100;
		#5
		$display("%12b : E%12b : S%12b : R%12b", absVal, exponent, significand, round_bit);
        
		// Add stimulus here

	end
      
endmodule

