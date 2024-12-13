`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 11:40:29 PM
// Design Name: 
// Module Name: test_alu
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


module test_alu();

    reg [2:0] test_alu_control;
    reg [31:0] test_in1, test_in2;
    
    wire test_zero;
    wire [31:0] test_result;
    
    alu alu1(
        .alu_control(test_alu_control),
        .in1(test_in1),
        .in2(test_in2),
        .zero(test_zero),
        .result(test_result)
    );
    
    initial begin
        test_alu_control = 3'b000;
        test_in1 = 32'd40;
        test_in2 = 32'd40;
        #10
        test_in1 = 32'd27;
        test_in2 = 32'd35;
        #10
        test_alu_control = 3'b010;
        #10
        test_alu_control = 3'b110;
        #10
        test_alu_control = 3'b111;
        #10
        test_alu_control = 3'b001;
        #10
        $finish;
    end    

endmodule
