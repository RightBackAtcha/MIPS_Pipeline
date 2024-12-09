`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 06:17:48 PM
// Design Name: 
// Module Name: test_sign_extend
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


module test_sign_extend();

    reg [15:0] test_a;
    
    wire [31:0] test_y;
    
    s_extend sign1(
        .a(test_a),
        .y(test_y)
    );
    
    initial begin
        test_a = -15;
        #20
        test_a = 20;
        #20
        test_a = 30;
        #20
        test_a = 0;
        #20
        $finish;
    end    

endmodule
