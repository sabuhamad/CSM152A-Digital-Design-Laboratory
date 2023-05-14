`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:21 04/24/2023 
// Design Name: 
// Module Name:    FPCVT 
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
module FPCVT(
    input [11:0] D,
    output [2:0] E,
    output S,
    output [3:0] F
    );
	
	wire [11:0] absVal;
	wire [2:0] exponent;
	wire  [3:0] significand;
	wire round_bit;
	
	
	//convert 2's comp to signed magnitude
	twoCompToSignMag twoCompToSignMagInit(
		.D(D),
		.absVal(absVal),
		.sign(S)
	);
	
	linearToExponent linearToExponent(
		.absVal(absVal),
		.exponent(exponent),
		.significand(significand),
		.round_bit(round_bit)
	);
	
	rounding rounding(
		.exponent(exponent),
		.significand(significand),
		.round_bit(round_bit),
		.E(E),
		.F(F)
	);

endmodule
