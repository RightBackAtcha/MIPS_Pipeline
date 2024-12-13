`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2024 08:55:58 PM
// Design Name: 
// Module Name: d_mem
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


module d_mem(
    input clk, rst,
    input wire mem_write, mem_read,
    input wire [31:0] write_dat, addr,
    output reg [31:0] read_dat
    );
    
    // 256 32-bit Words
    reg [31:0] mem [0:255];
    integer i;
    
    initial begin
        for(i = 0; i < 256; i = i + 1)
            mem[i] = 32'h0;
        $readmemb("C:/Users/Jorda/ECE4300_Labs/ECE4300_Labs.srcs/sources_1/new/data.txt", mem);
   end
    
    // Memory Read
    always @(negedge clk) begin
        if(mem_read) begin
            read_dat = mem[addr[7:0]];
        end else begin
            read_dat = 32'b0;
        end
   end 
   
    // Memory Write
    always @(posedge clk) begin
        if(rst) begin
            mem[255] <= 32'hFFFFFFFF;
        end
        else if(mem_write) begin
            mem[addr[7:0]] <= write_dat;
        end
    end
endmodule
