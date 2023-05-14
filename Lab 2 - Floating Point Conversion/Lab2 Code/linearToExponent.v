`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:50 04/24/2023 
// Design Name: 
// Module Name:    linearToExponent 
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
module linearToExponent(
    input [11:0] absVal,
    output reg [2:0] exponent,
    //output reg [7:0] shifted_magnitude
	 output reg [3:0] significand,
	 output reg round_bit //fifth_bit
    );
	 
reg [2:0] ctr = 0;
reg [3:0] shifted_magnitude;
always@* begin
	if (absVal[11] == 1'b0) begin
		exponent = 3'b111;
		shifted_magnitude = absVal[10:7];
		round_bit = absVal[6]; //set to the fifth bit after the leading 0s
		if (absVal[10] == 1'b0) begin
			exponent = 3'b110;
			shifted_magnitude = absVal[9:6];
			round_bit = absVal[5]; //set to the fifth bit after the leading 0s
			if (absVal[9] == 1'b0) begin
				exponent = 3'b101;
				shifted_magnitude = absVal[8:5];
				round_bit = absVal[4]; //set to the fifth bit after the leading 0s
				if (absVal[8] == 1'b0) begin
					exponent = 3'b100;
					shifted_magnitude = absVal[7:4];
					round_bit = absVal[3]; //set to the fifth bit after the leading 0s
					if (absVal[7] == 1'b0) begin
						exponent = 3'b011;
						shifted_magnitude = absVal[6:3];
						round_bit = absVal[2]; //set to the fifth bit after the leading 0s
						if (absVal[6] == 1'b0) begin
							exponent = 3'b010;
							shifted_magnitude = absVal[5:2];
							round_bit = absVal[1]; //set to the fifth bit after the leading 0s
							if (absVal[5] == 1'b0) begin
								exponent = 3'b001;
								shifted_magnitude = absVal[4:1];
								round_bit = absVal[0]; //set to the fifth bit after the leading 0s
								
								if (absVal[4] == 1'b0) begin
									exponent = 3'b000;
									shifted_magnitude = absVal[3:0];
									round_bit = 1'b0; //set to the fifth bit after the leading 0s
								end
								end
								end
								end
								end
								end
								end
								end
	assign significand = shifted_magnitude;
	
end



/*while(temp == 1'b0)
	exponent = exponent + 1'b1;
	temp = absVal[ctr];
	ctr = ctr - 1'b1;
	if (exponent == 1'd7)
		temp = 1'b1;
*/
	
//shifted_magnitude = absVal[ctr:ctr-1'd4];
	



endmodule
