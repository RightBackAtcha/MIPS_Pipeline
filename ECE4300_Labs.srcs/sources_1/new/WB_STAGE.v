`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 08:32:15 PM
// Design Name: 
// Module Name: WB_STAGE
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


module WB_STAGE(
    input mem_to_reg,
    input [31:0] read_dat, addr,
    output [31:0] mux_out
    );
    
    mux mux1(
        .a(addr),
        .b(read_dat),
        .sel(mem_to_reg),
        .y(mux_out)
    );
endmodule
