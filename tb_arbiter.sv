`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 03:58:42 PM
// Design Name: 
// Module Name: tb_arbiter
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


module tb_arbiter(

    );
    reg          reset_n;
    reg [15:0]    request;
    
    wire [15:0] grant;
    wire        busy;
    reg [15:0] frame_n,valid_n,din;
    arbiter_router DUT(.reset_n(reset_n),.request(request),.grant(grant),.busy(busy));
    enable_data   DUT0(.grant(grant),.frame_n(frame_n),.valid_n(valid_n),.din(din));
    initial begin
        reset_n=0;
        #30 reset_n=1;
        #20 request=16'hfff0;
        #30 request=16'hfff5;
        #40 request=16'hff01;
        #30 request=16'h0100;
    end
    always #10 begin
//            request=$random;
            frame_n=$random;
            valid_n=$random;
            din=$random;
    end
endmodule
