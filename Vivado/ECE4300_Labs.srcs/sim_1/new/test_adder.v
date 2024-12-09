`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 11:55:26 PM
// Design Name: 
// Module Name: test_adder
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


module test_adder();

    reg [31:0] test_in1, test_in2;
    wire [31:0] test_out;
    
    adder adder1(
        .add_in1(test_in1),
        .add_in2(test_in2),
        .add_out(test_out)
    );
    
    initial begin
        test_in1 = 32'h00000000;
        test_in2 = 32'h00000000;
        #10
        test_in1 = 32'h000000A4;
        test_in2 = 32'h0000002F;
        #10
        test_in1 = 32'h00000007;
        #10
        $finish;
    end

endmodule
