`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 16:24:04
// Design Name: 
// Module Name: Slow_Clock
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


module Slow_Clock(input clk_in,output clk_out

    );
    reg [25:0] count=0; //input clock of the basys 3 board 100Mhz
    reg clk_out; // 4Hz slow clock
    
    always @(posedge clk_in)
    begin
    count<=count+1;
    if(count==12_500_000) // equals
    begin
    count<=0; // reset itself to zero
    clk_out=~clk_out; // inverts the clock
    end
    end
endmodule
