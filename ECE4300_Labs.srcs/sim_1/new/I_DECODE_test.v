`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 05:31:49 AM
// Design Name: 
// Module Name: I_DECODE_test
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


module I_DECODE_test();

        reg clk, write_en, rst;
        reg [4:0] rd_test;
        reg [31:0] write_test, instr_test, npc_test;
        
        wire [1:0] wb_out;
        wire [2:0] m_out;
        wire [3:0] ex_out;
        wire [4:0] instr_2016_test, instr_1511_test;
        wire [31:0] rdat1_test, rdat2_test, npc_out, signext_test;
        
        wire [31:0] latch_reg0_out, latch_reg1_out, latch_reg2_out, latch_reg3_out;
        wire [31:0] latch_reg4_out, latch_reg5_out, latch_reg6_out, latch_reg7_out;
        wire [31:0] latch_reg8_out, latch_reg9_out;
        
        I_DECODE decode(
            .clk(clk),
            .rst(rst),
            .write_en(write_en),
            .write_data(write_test),
            .instr_in(instr_test),
            .rd(rd_test),
            .npc_in(npc_test),
            .wb_out(wb_out),
            .m_out(m_out),
            .ex_out(ex_out),
            .instr_2016_out(instr_2016_test),
            .instr_1511_out(instr_1511_test),
            .rdat1_out(rdat1_test),
            .rdat2_out(rdat2_test),
            .npc_out(npc_out),
            .latch_signext_out(signext_test),
            .latch_reg0_out(latch_reg0_out),
            .latch_reg1_out(latch_reg1_out),
            .latch_reg2_out(latch_reg2_out),
            .latch_reg3_out(latch_reg3_out),
            .latch_reg4_out(latch_reg4_out),
            .latch_reg5_out(latch_reg5_out),
            .latch_reg6_out(latch_reg6_out),
            .latch_reg7_out(latch_reg7_out),
            .latch_reg8_out(latch_reg8_out),
            .latch_reg9_out(latch_reg9_out)
        );
        
        initial clk = 0;
        always #5 clk <= ~clk;
        
        initial begin
            rst = 1;
            #10
            rst = 0;
            write_en = 0;
            rd_test = 5'b00000;
            write_test = 32'h00000000;
            instr_test = 32'b000000_00000_00000_0000000000000000;
            npc_test = 32'hFFFFFFFF;
            #20
            instr_test = 32'b101011_00000_00000_1111000011110000;
            #20
            write_en = 1;
            rd_test = 5'b00001;
            write_test = 32'hAABBCCDD;
            #20
            rd_test = 5'b00010;
            write_test = 32'hFFFFCCCC;
            #20
            instr_test = 32'b101011_00001_00010_1111000011110000;
            #20
            $finish;
        end

endmodule
