`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 09:32:36 PM
// Design Name: 
// Module Name: program_counter_test
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


module program_counter_test();

    reg [31:0] npc_test;
    reg clk_test;
    
    wire [31:0] pc_test;
    
    program_counter PC(
        .pc(pc_test),
        .clk(clk_test),
        .npc(npc_test)
    );
    
    initial clk_test <= 0;
    always #5 clk_test <= ~clk_test;
    
    initial begin
        npc_test <= 32'h00000000;
        #10
        npc_test <= 32'hAA00FF00;
        #10
        npc_test <= 32'h88AAFF00;
        #10
        npc_test <= 32'h00CCAABB;
        $finish;
    end    

endmodule
