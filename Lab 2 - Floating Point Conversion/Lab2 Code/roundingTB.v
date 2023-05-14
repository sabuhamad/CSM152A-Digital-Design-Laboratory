`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:19:02 05/01/2023
// Design Name:   rounding
// Module Name:   C:/Users/Student/Desktop/Group6Lab2/lab2/roundingTB.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rounding
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module roundingTB;

	// Inputs
	reg [2:0] exponent;
	reg [3:0] significand;
	reg round_bit;

	// Outputs
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	rounding uut (
		.exponent(exponent), 
		.significand(significand), 
		.round_bit(round_bit), 
		.E(E), 
		.F(F)
	);

	initial begin
		exponent = 3'b010;
		significand = 4'b0111;
		round_bit = 1'b1;
		#5
		$display("E:%3b S:%4b R:%1b OUTPUT: E:%3b F:%4b", exponent, significand, round_bit, E, F);
		exponent = 3'b010;
		significand = 4'b1111;
		round_bit = 1'b1;
		#5
		$display("E:%3b S:%4b R:%1b OUTPUT: E:%3b F:%4b", exponent, significand, round_bit, E, F);
		exponent = 3'b001;
		significand = 4'b1111;
		round_bit = 1'b0;
		#5
		$display("E:%3b S:%4b R:%1b OUTPUT: E:%3b F:%4b", exponent, significand, round_bit, E, F);
		exponent = 3'b111;
		significand = 4'b1111;
		round_bit = 1'b1;
		#5
		$display("E:%3b S:%4b R:%1b OUTPUT: E:%3b F:%4b", exponent, significand, round_bit, E, F);
        
		// Add stimulus here

	end
      
endmodule

