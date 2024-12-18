`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2024 12:46:19 AM
// Design Name: 
// Module Name: Driver
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
//`include "router_itf.sv"
//`include "Packet.sv"
`include "Generate.sv"
class Driver;
    virtual router_io.TB rtr_io;
    pkt_mbox in_box,out_box;
    semaphore sem[];
    function new(virtual router_io.TB rtr_io,pkt_mbox in_box,out_box,semaphore sem[]); 
        this.rtr_io=rtr_io;
        this.in_box=in_box;
        this.out_box=out_box;
        this.sem=sem;
    endfunction
    task drv();
        Packet pkt;
        this.in_box.get(pkt);
        begin
            this.rtr_io.cb.frame_n[pkt.sa]<=1'b0;
            this.rtr_io.cb.valid_n[pkt.sa]<=1'b0;
            send_addr(pkt);
            $display(sem[pkt.da]);
            send_payload(pkt);
        end
    endtask;
    task send_addr(Packet pkt);
        $display(pkt.da);
        begin
            @(this.rtr_io.cb);
            this.rtr_io.cb.din[pkt.sa]<=pkt.da[0];
            $display("%b",pkt.da[0]);
            @(this.rtr_io.cb);
            this.rtr_io.cb.din[pkt.sa]<=pkt.da[1];
            $display("%b",pkt.da[1]);
            @(this.rtr_io.cb);
            this.rtr_io.cb.din[pkt.sa]<=pkt.da[2];
            $display("%b",pkt.da[2]);
            @(this.rtr_io.cb);
            this.rtr_io.cb.din[pkt.sa]<=pkt.da[3];
            $display("%b",pkt.da[3]);
            @(this.rtr_io.cb);
        end
    endtask
    task send_payload(Packet pkt);
        bit [7:0] payload;
        Packet pkt_outbox;
        integer i;
        begin
            sem[pkt.da].get(1);
            pkt_outbox=new(pkt.sa,pkt.da);
            while(pkt.payload.size()>0) begin
                 payload=pkt.payload.pop_front();
                 pkt_outbox.payload.push_back(payload);
                 $display("%d",payload);
                 for(i=0;i<=7;i=i+1) begin
                    this.rtr_io.cb.din[pkt.sa]<=payload[i];
                     if(pkt.payload.size()==0 &&i==7) begin
                        this.rtr_io.cb.frame_n[pkt.sa]<=1'b1;
                     end
                     @(this.rtr_io.cb);
                 end
            end
            this.out_box=new();
            $display(pkt_outbox.payload);
            this.out_box.put(pkt_outbox);
            sem[pkt.da].put(1);
        end
    endtask
endclass
module Driver(

    );
    bit clk;
    router_io rtr_io(clk);
    pkt_mbox in_box,out_box;
    Driver drvr[2];
    Generator gnr;
    semaphore sem[16];
    
    initial begin
        clk=0;
        foreach(sem[i]) begin
        sem[i]=new(1);
        end
        gnr=new();
        gnr.gen(14,7,50);
        gnr.gen(12,7,15);
        
        drvr[0]=new(rtr_io,gnr.out_box[14],out_box,sem);  
        drvr[1]=new(rtr_io,gnr.out_box[12],out_box,sem);
        fork 
        drvr[0].drv();
        drvr[1].drv();
        join
    end
    always #5 clk=~clk;
endmodule
