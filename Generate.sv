`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:16:21 PM
// Design Name: 
// Module Name: Generate
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
`include "Packet.sv"
`include "router_itf.sv"
class Generator;
    pkt_mbox out_box[];
    function new();
    this.out_box=new[16];
        foreach(this.out_box[i]) begin
        this.out_box[i]=new();
        end
    endfunction
    task gen(bit [3:0] sa,da,integer n_payload);
        Packet pkt;
        pkt=new(sa,da);
        pkt.create_payload_random(n_payload);
        this.out_box[sa].put(pkt);
    endtask
//    task put();
//    endtask
endclass

//module Generate(

//    );
//    Generator gnr;
//    pkt_mbox out_box[];
//    initial begin
//        gnr=new();
//        gnr.gen(12,1,40);
//        gnr.gen(14,1,40); 
//    end
//endmodule 
