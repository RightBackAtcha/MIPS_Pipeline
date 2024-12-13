`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 12:44:57 AM
// Design Name: 
// Module Name: control
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

module control(
    input [5:0] opcode,
    output reg [8:0] control_bits
 );

    always @(*) begin
        case (opcode)
            6'b000000: control_bits = 9'b1100_000_10; // r-type
            6'b100011: control_bits = 9'b0001_010_11; // load word
            6'b101011: control_bits = 9'b0001_001_00; // store word
            6'b000100: control_bits = 9'b0000_001_01; // branch
            6'b100000: control_bits = 9'b000_000_000; // nop
            
            default: control_bits = 9'b0000_000_00;
        endcase
    end

endmodule