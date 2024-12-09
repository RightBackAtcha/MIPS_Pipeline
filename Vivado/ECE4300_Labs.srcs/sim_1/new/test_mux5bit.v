`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 11:47:21 PM
// Design Name: 
// Module Name: test_mux5bit
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


module test_mux5bit();

    reg sel;
    reg [4:0] test_a, test_b;
    wire [4:0] test_y;
    
    mux_5bit mux_5bit1(
        .sel(sel),
        .a(test_a),
        .b(test_b),
        .y(test_y)
    );
    
    initial begin
        test_a = 5'b00100;
        test_b = 5'b11101;
        sel = 0;
        #10
        sel = 1;
        #10
        test_b = 5'b00101;
        #10
        sel = 0;
        #10
        $finish;
    end

endmodule
