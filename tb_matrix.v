`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 03:00:42 PM
// Design Name: 
// Module Name: tb_matrix
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


module tb_matrix(

    );
    reg [15:0] frame_n,valid_n,din,request;
    matrix dut(.frame_n5(frame_n),.valid_n5(valid_n),.din5(din),.request5(request));
    always #30 begin
        frame_n=$random;
        valid_n=$random;
        din=$random;
    end
endmodule
