`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 05:32:55 PM
// Design Name: 
// Module Name: test_control
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


module test_control();

    wire [8:0] test_control;

    reg [5:0] test_opcode;
    
    control control1(
        .opcode(test_opcode),
        .control_bits(test_control)
    );
    
    initial begin
        test_opcode = 6'b000000;
        #20
        test_opcode = 6'b100011;
        #20
        test_opcode = 6'b101011;
        #20
        test_opcode = 6'b00100;
        #20
        $finish;
    end

endmodule
