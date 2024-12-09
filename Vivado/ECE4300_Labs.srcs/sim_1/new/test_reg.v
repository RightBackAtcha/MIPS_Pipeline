`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 05:47:07 PM
// Design Name: 
// Module Name: test_reg
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


module test_reg();

    reg [4:0] test_rs, test_rd, test_rt;
    reg [31:0] test_write_data;
    reg clk, write_en, rst;
    
    wire [31:0] test_read1, test_read2;
    
    register reg1(
        .rs(test_rs),
        .rd(test_rd),
        .rt(test_rt),
        .write_en(write_en),
        .write_data(test_write_data),
        .clk(clk),
        .rst(rst),
        .read_data1(test_read1),
        .read_data2(test_read2)
    );
    
    initial clk <= 0;
    always #1 clk <= ~clk;
    
    initial begin
        rst = 1;
        #10
        rst = 0;
        write_en = 0;
        test_rd = 5'b00000;
        test_rt = 5'b00000;
        test_rs = 5'b00000;
        test_write_data = 32'h00000000;
        #20
        write_en = 1;
        test_rd = 5'b00001;
        test_write_data = 32'h33334444;
        #10
        test_rd = 5'b00010;
        test_write_data = 32'hAAAAFFFF;
        #10
        test_rd = 6'b00011;
        test_write_data = 32'hBBBBCCCC;
        #10
        write_en = 0;
        test_rs = 5'b00001;
        test_rt = 5'b00010;
        #20
        $finish;
    end

endmodule
