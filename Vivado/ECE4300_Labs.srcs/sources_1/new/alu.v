`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 11:27:37 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [2:0] alu_control,
    input [31:0] in1, in2,
    output zero,
    output reg [31:0] result
    );
    
    always @(*) begin
        case(alu_control)
            3'b010: result = in1 + in2; // Add
            3'b110: result = in1 - in2; // Subtract
            3'b000: result = in1 & in2; // And
            3'b001: result = in1 | in2; // Or
            3'b111: result = (in1 < in2) ? 32'b1 : 32'b0; // Set less than
            default: result = 32'b0;
        endcase
    end
    
    assign zero = (result == 32'b0);
    
endmodule
