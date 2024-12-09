`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 10:18:25 PM
// Design Name: 
// Module Name: alu_control
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


module alu_control(
    input [5:0] funct,
    input [1:0] alu_op,
    output reg [2:0] alu_control
    );
    
    always @(*) begin
        case(alu_op)
            2'b00: alu_control = 3'b010; // Load/Store word
            2'b01: alu_control = 3'b010; // Branch Equal
            2'b10: begin
                case(funct)
                    6'b100000: alu_control = 3'b110; // Subtract
                    6'b100010: alu_control = 3'b010; // Add
                    6'b100100: alu_control = 3'b000; // And
                    6'b100101: alu_control = 3'b001; // Or
                    6'b101010: alu_control = 3'b111; // Set on less than
                    default: alu_control = 3'b000;   // Invalid funct
                endcase
            end         
            default: alu_control = 3'b000; // Invalid funct       
        endcase     
    end
    
endmodule
