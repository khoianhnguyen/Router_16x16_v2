`ifndef DEF_MAILBOX
`define DEF_MAILBOX
typedef class Packet;
typedef mailbox #(Packet) pkt_mbox; 
interface router_io(input bit clk);
    logic           reset_n;
    logic [15:0]    din;
    logic [15:0]    frame_n;
    logic [15:0]    valid_n;
    logic [15:0]    dout;
    logic [15:0]    frameo_n;
    logic [15:0]    valido_n;
    clocking cb @(posedge clk);
    output reset_n;
    output din;
    output frame_n;
    output valid_n;
    input dout;
    input frameo_n;
    input valido_n;
    endclocking: cb
    modport TB(clocking cb,output reset_n);
endinterface: router_io
`endif
