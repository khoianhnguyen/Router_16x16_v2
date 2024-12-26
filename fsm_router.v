`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2024 02:53:29 PM
// Design Name: 
// Module Name: fsm_router
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


module fsm_router(
    input clk,
    input reset_n,
    input frame_n,
    input valid_n,
    input din,
    output [3:0] address,
    output frame_ntemp,
    output valid_ntemp,
    output din_temp,
    output request
    );
    reg [3:0] ADDRESS;
    reg VALID_O;
    reg FRAME_O;
    reg DOUT;
    reg RQS;
    reg [2:0] state;
    reg check;
    assign address=ADDRESS;
    assign frame_ntemp=FRAME_O;
    assign valid_ntemp=VALID_O;
    assign din_temp=DOUT;
    assign request=RQS;
    parameter INIT=3'b000,ADD_0=3'b001,ADD_1=3'b010,ADD_2=3'b011,ADD_3=3'b100,PADDING=3'b101,LAUNCH_RQS=3'b110,FINISH=3'b111;
    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            ADDRESS=4'dx;
            VALID_O=1'bx;
            FRAME_O=1'bx;
            DOUT=1'bx;
            RQS=1'b0;
            state=INIT;
            check=0;
        end
        else begin
            if(state==INIT ) begin
                if(!frame_n) begin
                state<=ADD_0;
                ADDRESS[0]=din;
                VALID_O=1'bx;
                FRAME_O=1'bx;
                DOUT=1'bx;
                RQS=1'b0;
                end
                else begin
                state<=state;
                ADDRESS=4'bxxxx;
                VALID_O=1'bx;
                FRAME_O=1'bx;
                DOUT=1'bx;
                RQS=1'b0;
                end
            end
            if(state==ADD_0 && frame_n==0) begin
                state<=ADD_1;
                ADDRESS[1]=din;
                VALID_O=1'bx;
                FRAME_O=1'bx;
                DOUT=1'bx;
                RQS=1'b0;
            end
            if(state==ADD_1 && frame_n==0) begin
                state<=ADD_2;
                ADDRESS[2]=din;
                VALID_O=1'bx;
                FRAME_O=1'bx;
                DOUT=1'bx;
                RQS=1'b0;
            end
            if(state==ADD_2 && frame_n==0) begin
                state<=ADD_3;
                ADDRESS[3]=din;
                VALID_O=1'bx;
                FRAME_O=1'bx;
                DOUT=1'bx;
                RQS=1'b0;
            end
            if(state==ADD_3) begin
                if(valid_n) begin
                    state<=PADDING;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=1'bx;
                    RQS=RQS;
                end
                else if(frame_n) begin
                    state<=INIT;
                    VALID_O=1'bx;
                    FRAME_O=1'bx;
                    DOUT=1'bx;
                    RQS=1'b0;
                    ADDRESS=3'bxxx;
                end
                else if(!frame_n&!valid_n) begin
                    state<=LAUNCH_RQS;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=din;
                    RQS=1'b1;
                end
            end
            if(state==PADDING) begin
                 if(valid_n) begin
                    state<=PADDING;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=1'bx;
                    RQS=RQS;
                    ADDRESS=ADDRESS;
                end
                else if(frame_n)begin
                    state<=INIT;
                    VALID_O=1'bx;
                    FRAME_O=1'bx;
                    DOUT=1'bx;
                    RQS=1'b0;
                    ADDRESS=3'bxxx;
                end
                else if(!valid_n&!frame_n) begin
                    state<=LAUNCH_RQS;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=din;
                    RQS=1'b1;
                    ADDRESS=ADDRESS;
                end
            end
            if(state==LAUNCH_RQS) begin
                if(frame_n) begin
                    state<=FINISH;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=(valid_n)?1'bx:din;
                    RQS=RQS;
                    ADDRESS=ADDRESS;
                    check=1;
                end
                else if(valid_n) begin
                    state<=state;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=1'bx;
                    RQS=RQS;
                    ADDRESS=ADDRESS;
                end
                else if(!frame_n&!valid_n) begin
                    state<=state;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=din;
                    RQS=RQS;
                    ADDRESS=ADDRESS;
                end
            end
            if (state==FINISH) begin
                if(valid_n&frame_n) begin
                    state<=state;
                    VALID_O=valid_n;
                    FRAME_O=frame_n;
                    DOUT=1'bx;
                    RQS=RQS;
                    ADDRESS=ADDRESS;
                    check=0;
                end
                else if(!valid_n&frame_n) begin
                    state<=INIT;
                    VALID_O=(check)?1'bx:valid_n;
                    FRAME_O=(check)?1'bx:frame_n;
                    DOUT=(check)?1'bx:din;
                    RQS=(check)?1'b0:RQS;
                    ADDRESS=(check)?4'bxxxx:ADDRESS;
                end
            end
        end
    end
endmodule
