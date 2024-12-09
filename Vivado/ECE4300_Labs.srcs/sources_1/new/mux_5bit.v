`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 11:26:24 PM
// Design Name: 
// Module Name: mux_5bit
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


module mux_5bit(
    input [4:0] a, b,
    input sel,
    output [4:0] y
    );
    
    assign y = sel ? b : a;
    
endmodule
