`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 01:38:39 PM
// Design Name: 
// Module Name: project_2
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


module project_2(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Co
    );
    always@(A,B,Cin) begin
        if (~A & ~B & ~Cin) begin
            Sum = 0;
            Co = 0;
        end
        else if(~A & ~B & Cin) begin
            Sum = 1;
            Co = 0;
        end
        else if(~A & B & ~Cin) begin
            Sum = 1;
            Co = 0;
        end
        else if(~A & B & Cin) begin
            Sum = 0;
            Co = 1;
        end
        else if(A & ~B & ~Cin) begin
            Sum = 1;
            Co = 0;
        end
        else if(A & ~B & Cin) begin
            Sum = 0;
            Co = 1;
        end
        else if(A & B & ~Cin) begin
            Sum = 0;
            Co = 1;
        end
        else if(A & B & Cin) begin
            Sum = 1;
            Co = 1;
        end
    end
endmodule
