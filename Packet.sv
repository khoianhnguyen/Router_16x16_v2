`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2024 09:55:44 PM
// Design Name: 
// Module Name: Packet
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

class Packet;
    bit [3:0] da,sa;
    bit [7:0] payload[$];
//    constraint random_payload{
        
//    }
    function new(bit [3:0]sa,da);
        this.sa=sa;
        this.da=da;
    endfunction

    function create_payload(bit [7:0] payload[$]);
        this.payload=payload;
    endfunction
    function create_payload_random(integer n_payload);
        integer i;
        for(i=0;i<n_payload;i=i+1) begin
            this.payload.push_back($random);
        end
    endfunction
endclass
module Packet_tb(

    );
    Packet pkt;
    bit [3:0] sa=3;
    bit [3:0] da=4;
    bit [7:0] payload[$]={13,14,16,17,18};
    initial begin
            pkt=new(sa,da);
            pkt.create_payload_random(40);
            $display ("sa=%d, da=%d",pkt.sa,pkt.da);
            $display (pkt.payload);
    end
endmodule
