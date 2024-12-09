`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 07:14:15 PM
// Design Name: 
// Module Name: test_incr
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

module test_incr();
    wire [31:0] test_out;
    
    reg [31:0] test_a;
    
    incr incr1(
        .out(test_out),
        .a(test_a)
    );
    
    initial begin
        test_a = 4;
        #10
        test_a = 30;
        #10
        test_a = 20;
        $finish;
    end

endmodule
