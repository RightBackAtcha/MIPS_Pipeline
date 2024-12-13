`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 08:45:22 PM
// Design Name: 
// Module Name: memory
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


module memory(
    input clk,
    input wire [31:0] addr,
    output reg [31:0] data
    );
    
    reg [31:0] MEM[0:127];
    integer i;
    initial begin
        $readmemb("C:/Users/Jorda/ECE4300_Labs/ECE4300_Labs.srcs/sources_1/new/risc.txt", MEM);
    end
    
    always @ (*) begin
        data <= MEM[addr];
    end 
endmodule
