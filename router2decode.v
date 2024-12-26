`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 07:53:53 PM
// Design Name: 
// Module Name: router2decode
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


module router2decode(
    input clk,
    input reset_n,
    input frame_n,
    input valid_n,
    input din,
    output [15:0] frame_o,
    output [15:0] valid_o,
    output [15:0] dout,
    output [15:0] request
    );
    wire [3:0] address;
    wire frame_ntemp;
    wire valid_ntemp;
    wire din_temp;
    wire rqs;
    fsm_router DUT(.clk(clk),.reset_n(reset_n),.frame_n(frame_n),.valid_n(valid_n),.din(din),.address(address),.frame_ntemp(frame_ntemp),.valid_ntemp(valid_ntemp),.din_temp(din_temp),.request(rqs));
    decode DUT0(.address(address),.valid_n(valid_ntemp),.frame_n(frame_ntemp),.request(rqs),.din(din_temp),.frame_o(frame_o),.valid_o(valid_o),.dout(dout),.request_o(request)); 
endmodule
