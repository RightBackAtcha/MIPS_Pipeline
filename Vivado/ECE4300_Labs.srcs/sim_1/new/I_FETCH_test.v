`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 10:18:24 PM
// Design Name: 
// Module Name: I_FETCH_test
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


module I_FETCH_test();

    reg clk_test, rst;
    reg MEM_sel;
    reg [31:0] MEM_NPC_test;
    wire [31:0] instr_test, npc_test;
    
    I_FETCH fetch(
        .clk(clk_test),
        .rst(rst),
        .EX_MEM_NPC(MEM_NPC_test),
        .EX_MEM_PCSrc(MEM_sel),
        .IF_ID_instr(instr_test),
        .IF_ID_npc(npc_test)
    );
    
    initial clk_test <= 0;
    always #5 clk_test <= ~clk_test;
    
    initial begin
        rst = 1;
        #50
        rst = 0;
        MEM_sel <=0;
        #50
        MEM_NPC_test <= 32'hFFFFFFFF;
        #20
        MEM_NPC_test <= 32'h00000000;
        MEM_sel <= 1;
        #100
    $finish;
    end

endmodule
