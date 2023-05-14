`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:00:07 04/24/2023
// Design Name:   FPCVT
// Module Name:   C:/Users/Student/Desktop/Group6Lab2/lab2/tb.v
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
module tb;

	// Inputs
	reg [11:0] D_tb;

	// Outputs
	wire [2:0] E_tb;
	wire S_tb;
	wire [3:0] F_tb;

	// Instantiate the Unit Under Test (UUT)
	FPCVT uut (
		.D(D_tb), 
		.E(E_tb), 
		.S(S_tb), 
		.F(F_tb)
	);

	initial begin
		$display("Time (ns), D, S, E, F");
		
		D_tb = 12'd5;
		#5
		$display();
		D_tb = 12'd35;
		
		
//		test_case(12'b000000101100);
//		test_case(12'b000000101101);
//		twoComp(12'b111111101101);
		$finish;
	end
	
	reg [11:0] absVal;
	
	task twoComp;
		input [11:0] D_test;
		
		begin
			absVal = D_test[11] ? (~D_test[11:0] + 'b1) : D_test[11:0];
			$display("%12b", absVal);
		end
	endtask
	
   task test_case;
		input [11:0] D_test;
		begin
			D_tb <= D_test;
			#10
			$display("%3dns, %12b, %12b, %1b, %3b, %4b", $time, D_tb, twoComp, S_tb, E_tb, F_tb);
		end
	endtask
endmodule

