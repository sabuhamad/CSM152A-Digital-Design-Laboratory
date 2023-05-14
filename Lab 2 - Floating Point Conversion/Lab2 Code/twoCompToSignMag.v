`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:34 04/24/2023 
// Design Name: 
// Module Name:    twoCompToSignMag 
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
module twoCompToSignMag(
    input [11:0] D,
    output wire [11:0] absVal,
    output wire sign
    );
	assign sign = D[11];

	//sign&& not rest of the bits?
	//assign absVal = (sign&&!D[10]) ? ~D[11:0] + 'b1 : D[11:0];
	assign absVal = D[11:0] == 12'b100000000000 ? 12'b011111111111 : (sign ? ~D[11:0] + 'b1 : D[11:0]);


endmodule
