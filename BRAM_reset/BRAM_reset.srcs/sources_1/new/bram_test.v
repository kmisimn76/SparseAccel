`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 04:01:44 PM
// Design Name: 
// Module Name: bram_test
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


module bram_test(
    input [3:0] A,
    output [3:0] B,
    input clk,
    input reset
    );
    
    (* ram_style = "block" *) reg [3:0] C [511:0];
    
    wire b_in;
    reg [8:0] addr;
    wire [3:0] bram_in;
    reg [3:0] bram_out;
    always @(posedge clk) begin
        if(b_in)
            C[addr] <= bram_in;
        bram_out <= C[addr];
    end
endmodule