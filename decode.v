`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 07:37:06 PM
// Design Name: 
// Module Name: decode
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


module decode(
    input [3:0] address,
    input frame_n,
    input valid_n,
    input request,
    input din,
    output reg [15:0] frame_o,
    output reg [15:0] valid_o,
    output reg [15:0] dout,
    output reg [15:0] request_o
    );
    always @(*) begin
        if(!request) begin
            frame_o=16'bxxxxxxxxxxxxxxxx;
            valid_o=16'bxxxxxxxxxxxxxxxx;
            dout=16'bxxxxxxxxxxxxxxxx;
            request_o=16'd0;
        end
        else if(request) begin
            frame_o[address]=frame_n;
            valid_o[address]=valid_n;
            dout[address]=din;
            request_o[address]=request;
        end
    end
endmodule
