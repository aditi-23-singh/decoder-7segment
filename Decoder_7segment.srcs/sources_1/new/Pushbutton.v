`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 16:20:59
// Design Name: 
// Module Name: debounce
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


module debounce(input pb,clk_in,
output ledd

    );
    wire clk_out; 
    wire Q1,Q2,Q2_bar;
    
    Slow_Clock u1(clk_in,clk_out);
    D_FF d1(clk_out,pb,Q1);
    D_FF d2(clk_out,Q1,Q2);
    
    assign Q2_bar=~Q2;
    assign ledd=Q1& Q2_bar;
endmodule
