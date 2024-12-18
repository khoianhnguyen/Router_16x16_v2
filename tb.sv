`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 04:23:05 PM
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg reset_n;
    reg [15:0]frame_n;
    reg [15:0]valid_n;
    reg [15:0]din;
    wire [3:0] address;
    wire frame_ntemp;
    wire valid_ntemp;
    wire din_temp;
    wire request;
    router DUT(.clk(clk),.reset_n(reset_n),.frame_n(frame_n),.valid_n(valid_n),.din(din));
    decode DUT0(.address(address),.valid_n(valid_ntemp),.frame_n(frame_ntemp),.request(request),.din(din_temp));
    initial begin
        clk=1;
        reset_n=0;
        din=0;
        frame_n=16'hfff0;
        valid_n=0;
        #50 reset_n=1; 
        valid_n=0;
        #300 valid_n=0;
//        #300 valid_n=1;
        #400 frame_n=16'hfff1;
        #30 valid_n=0;
    end
    always #5 begin
        clk=!clk;
    end
    always #10 din=$random;
endmodule
