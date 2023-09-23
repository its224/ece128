`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 01:35:16 PM
// Design Name: 
// Module Name: one_bit_adder.
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

module one_bit_adder(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Co
    );
    assign Sum = A ^ B ^ Cin;
    assign Co = (A & B) | (A & Cin) | (B & Cin);
endmodule
