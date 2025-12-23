`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 12:27:18
// Design Name: 
// Module Name: Decoder_7segment
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Decoder_7segment(
input [3:0] in, // 4 bits going into the segment
output reg[6:0] seg //display the BCD number
    );
    always @(in)
    begin
    case(in)
        0: seg=7'b0000001; //active low logic here displays 0 on the seven segment
        1: seg=7'b1001111; // display "1"
2: seg=7'b0010010;// display "2"
              3: seg=7'b0000110;
               4:seg=7'b1001100;
                5: seg=7'b0100100;
                 6: seg=7'b0100000;
                  7: seg=7'b0001111;
                   8: seg=7'b0000000;
                    9: seg=7'b0001100;
                    endcase
                    end
endmodule
