`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 10:02:59 PM
// Design Name: 
// Module Name: test_d_mem
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


module test_d_mem();

    reg clk, rst;
    
    reg test_mem_write, test_mem_read;
    reg [31:0] test_write_data, test_addr;
    
    wire [31:0] test_read_data;

    // Instantiate the module
    d_mem d_mem1 (
        .clk(clk),
        .rst(rst),
        .mem_write(test_mem_write),
        .mem_read(test_mem_read),
        .addr(test_addr),
        .write_dat(test_write_dat),
        .read_dat(test_read_data)
    );

    initial clk <= 0;
    always #1 clk = ~clk;

    initial begin
        rst = 1;
        test_mem_write = 0;
        test_mem_read = 0;
        
        test_addr = 32'h00000001;
        test_write_data = 32'h00BBCCAA;
        
        #10;
        rst = 0;
        test_mem_write = 1;
        
        #10;
        test_addr = 32'h00000002;
        test_write_data = 32'h00CABFAA;
        
        #10;
        test_addr = 32'h00000001;
        test_mem_write = 0;
        test_mem_read = 1;

        #10;
        $finish;
    end
endmodule

