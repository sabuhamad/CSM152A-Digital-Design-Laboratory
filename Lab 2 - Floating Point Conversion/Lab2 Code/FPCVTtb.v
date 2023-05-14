`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:51:50 05/03/2023
// Design Name:   FPCVT
// Module Name:   C:/Users/Student/Desktop/Group6Lab2/lab2/FPCVTtb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPCVT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FPCVTtb;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire [2:0] E;
	wire S;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	FPCVT uut (
		.D(D), 
		.E(E), 
		.S(S), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
		D = 12'b00001101001;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b111111111111;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b011111111111;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b000101100011;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b100000000000; //overflow
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b000001111101;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b000111111111;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b111000000001;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b011111000000;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		D = 12'b010101000000;
		#100;
		$display("D:%12b ... OUTPUT: E:%3b S:%1b F:%4b", D, E, S, F);
		
        
		// Add stimulus here

	end
      
endmodule

