`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 08:43:33 PM
// Design Name: 
// Module Name: program_counter
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


module program_counter(
    input wire [31:0] npc,
    input clk, rst,
    output reg [31:0] pc
    );
    
    initial begin
        pc <= 0;
    end
    
    always @ (posedge clk) begin
        if(rst)
            pc <= 0;
        else
            pc <= npc;
    end
    
endmodule
