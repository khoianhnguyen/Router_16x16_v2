`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 08:04:35 PM
// Design Name: 
// Module Name: enable_data
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


module enable_data(
    input [15:0] frame_n,
    input [15:0] valid_n,
    input [15:0] din,
    input [15:0] grant,
    output reg frame_o,
    output reg valid_o,
    output reg dout
    );
    integer i;
    always @(*) begin
        for(i=0;i<=15;i=i+1) begin
            if(grant[i]) begin
                frame_o=frame_n[i];
                valid_o=valid_n[i];
                dout=din[i];
            end
        end
    end
endmodule
