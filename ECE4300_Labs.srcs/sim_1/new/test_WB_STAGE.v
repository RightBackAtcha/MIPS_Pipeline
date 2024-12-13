`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2024 07:38:05 PM
// Design Name: 
// Module Name: test_WB_STAGE
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


module test_WB_STAGE();

    reg test_mem_reg;
    reg [31:0] test_addr, test_read_dat;
    
    wire [31:0] test_out;
    
    WB_STAGE WB_STAGE1(
        .mem_to_reg(test_mem_reg),
        .read_dat(test_read_dat),
        .addr(test_addr),
        .mux_out(test_out)
    );
    
    initial begin
        test_addr = 32'h00000053;
        test_read_dat = 32'h000543F8;
        test_mem_reg = 0;
        #10
        test_mem_reg = 1;
        #10
        $finish;
    end

endmodule
