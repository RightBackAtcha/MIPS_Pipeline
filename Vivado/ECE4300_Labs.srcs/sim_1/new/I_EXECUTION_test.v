`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 06:29:49 AM
// Design Name: 
// Module Name: I_EXECUTION_test
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


module I_EXECUTION_test();

    // Inputs
    reg test_clk;
    reg test_rst;
    reg [1:0] test_wb_ctl;
    reg [2:0] test_m_ctl;
    reg [3:0] test_ex_ctl;
    reg [4:0] test_instr_2016;
    reg [4:0] test_instr_1511;
    reg [31:0] test_npc_out;
    reg [31:0] test_rdat1;
    reg [31:0] test_rdat2;
    reg [31:0] test_sign_ext;

    // Outputs
    wire test_alu_zero;
    wire [1:0] test_mem_wb;
    wire [2:0] test_mem_m;
    wire [31:0] test_adder_out;
    wire [31:0] test_alu_result;
    wire [4:0] test_mux5_out;
    wire [31:0] test_dat2_mem;

    // Instantiate the module
    I_EXECUTION uut (
        // Inputs
        .clk(test_clk),
        .rst(test_rst),
        .wb_ctl(test_wb_ctl),
        .m_ctl(test_m_ctl),
        .ex_ctl(test_ex_ctl),
        .instr_2016(test_instr_2016),
        .instr_1511(test_instr_1511),
        .npc_out(test_npc_out),
        .rdat1(test_rdat1),
        .rdat2(test_rdat2),
        .sign_ext(test_sign_ext),
        
        // Outputs
        .alu_zero(test_alu_zero),
        .mem_wb(test_mem_wb),
        .mem_m(test_mem_m),
        .adder_out(test_adder_out),
        .alu_result(test_alu_result),
        .mux5_out(test_mux5_out),
        .dat2_mem(test_dat2_mem)
    );

    // Clock generation
    initial begin
        test_clk = 0;
        forever #1 test_clk = ~test_clk;
    end

    // Test stimulus
    initial begin
        test_rst = 1;
        test_wb_ctl = 0;
        test_m_ctl = 0;
        test_ex_ctl = 0;
        test_instr_2016 = 0;
        test_instr_1511 = 0;
        test_npc_out = 0;
        test_rdat1 = 0;
        test_rdat2 = 0;
        test_sign_ext = 0;
        #10;
        test_rst = 0;
        #10;
        test_wb_ctl = 2'b10;
        test_m_ctl = 3'b011;
        test_ex_ctl = 4'b1101;
        test_instr_2016 = 5'b10101;
        test_instr_1511 = 5'b01010;
        test_npc_out = 32'h00000010;
        test_rdat1 = 32'h00000020;
        test_rdat2 = 32'h00000030;
        test_sign_ext = 32'h00000004;
        #20;
        test_ex_ctl = 4'b0010;
        test_rdat1 = 32'h00000050;
        test_sign_ext = 32'hFFFFFFFC;
        #20;
        $finish;
    end

endmodule
