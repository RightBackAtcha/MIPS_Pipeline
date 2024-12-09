`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 07:48:31 PM
// Design Name: 
// Module Name: test_MEM_STAGE
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


module test_MEM_STAGE();

    reg rst, clk;
    reg test_alu_zero;
    reg [1:0] test_ex_wb;
    reg [2:0] test_ex_m;
    reg [4:0] test_in_5bitmux;
    reg [31:0] test_mem_addr;
    reg [31:0] test_write_dat;

    wire test_reg_to_write;
    wire test_mem_to_reg;
    wire test_PCSrc;
    wire [4:0] test_mux_5bit;
    wire [31:0] test_wb_dat;
    wire [31:0] test_addr_out;

    MEM_STAGE MEM_STAGE1 (
        .rst(rst),
        .clk(clk),
        .alu_zero(test_alu_zero),
        .ex_wb(test_ex_wb),
        .ex_m(test_ex_m),
        .in_5bitmux(test_in_5bitmux),
        .mem_addr(test_mem_addr),
        .write_dat(test_write_dat),
        .reg_to_write(test_reg_to_write),
        .mem_to_reg(test_mem_to_reg),
        .PCSrc(test_PCSrc),
        .mux_5bit(test_mux_5bit),
        .wb_dat(test_wb_dat),
        .addr_out(test_addr_out)
    );

    // Clock generation
    initial clk = 0;
    always #1 clk = ~clk;

    // Test sequence
    initial begin
        rst = 1;
        test_alu_zero = 0;
        test_ex_wb = 2'b00;
        test_ex_m = 3'b000;
        test_in_5bitmux = 5'b00000;
        test_mem_addr = 32'h00000000;
        test_write_dat = 32'h00000000;

        #10;
        rst = 0;
        // Test Case 1: No memory operation
        test_ex_wb = 2'b10;          // Enable reg_write
        test_ex_m = 3'b001;          // mem_write = 1
        test_in_5bitmux = 5'b10101;
        test_mem_addr = 32'h00000005;
        test_write_dat = 32'hCAFEBABE;
        
        #10;
        // Test Case 2: Memory read operation
        test_ex_m = 3'b010;          // mem_read = 1
        test_write_dat = 32'hDEADBEEF; // Data to write, but no effect since mem_read is enabled
        
        #10;
        // Test Case 3: Branching
        test_ex_m = 3'b100;          // Branch condition (PCSrc depends on alu_zero)
        test_alu_zero = 1;           // Trigger branch
        
        #10;
        // Test Case 4: Reset behavior
        rst = 1;
        
        #10;
        rst = 0;

        $finish;
    end
endmodule
