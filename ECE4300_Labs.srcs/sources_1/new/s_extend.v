`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 12:44:57 AM
// Design Name: 
// Module Name: s_extend
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

module s_extend(
    input [15:0] a,
    output [31:0] y
 );

 assign y = {{16{a[15]}}, a};

endmodule