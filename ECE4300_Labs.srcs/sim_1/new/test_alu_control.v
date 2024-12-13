`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 11:16:40 PM
// Design Name: 
// Module Name: test_alu_control
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


module test_alu_control();

    reg [5:0] test_funct;
    reg [1:0] test_alu_op;
    
    wire [2:0] test_alu_control;
    
    alu_control alu_control1(
        .funct(test_funct),
        .alu_op(test_alu_op),
        .alu_control(test_alu_control)
    );
    
    initial begin
        test_alu_op = 2'b00;
        test_funct = 6'b000000;
        #10
        test_alu_op = 2'b01;
        #10
        test_alu_op = 2'b10;
        #10
        test_funct = 6'b100010;
        #10
        test_funct = 6'b100100;
        #10
        test_funct = 6'b100101;
        #10
        test_funct = 6'b101010;
        #10
        $finish;
    end

endmodule
