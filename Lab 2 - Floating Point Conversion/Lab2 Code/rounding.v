`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:46 04/24/2023 
// Design Name: 
// Module Name:    rounding 
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
module rounding(
    input [2:0] exponent,
	 input [3:0] significand,
	 input round_bit,
	 output wire [2:0] E,
	 output wire [3:0] F
    );

//just add 1 to the significand if rounding && no overflow potential
//assign significand = (round_bit && !(significand == 4'b1111)) ? (significand[3:0] + 4'b0001) : significand[3:0];
//edge case: if rounding && significand is 1111
//shift significand right one bit and increase exponent by 1 
//assign significand = (round_bit && (significand == 4'b1111)) ? (4'b0111) : (4'b1111);

//assign E = (round_bit && (significand == 4'b1111)) ? (exponent[2:0] + 3'b001) : exponent[2:0];
//assign F = significand;
reg [2:0] tempexponent;
reg [3:0] tempsignificand;
always @(*) begin
tempexponent = exponent;
tempsignificand = significand;
if(round_bit) begin
	if (significand == 4'b1111) begin
		if( exponent != 3'b111) begin
			 tempsignificand = (tempsignificand >> 1) + 1;
			 tempexponent = tempexponent + 3'b001;
			end
		else begin
			tempsignificand = 4'b1111;
			tempexponent = 3'b111;
		end
	end
	else begin 
		tempsignificand = tempsignificand + 4'b0001;
		end
	end
end
assign E = tempexponent;
assign F = tempsignificand;
endmodule
