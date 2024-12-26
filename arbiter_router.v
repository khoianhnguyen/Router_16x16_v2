`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 03:44:02 PM
// Design Name: 
// Module Name: arbiter_router
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


module arbiter_router(reset_n, request, grant, busy);
    input bit           reset_n;
    input bit [15:0]    request;
    
    output logic [15:0] grant;
    output bit          busy;
    reg                 higherRequests;
    wire                noGrant;
    integer i;
    
    assign noGrant  = ~|grant[15:0];
    assign busy     = !noGrant;
    
    always @(negedge reset_n) begin
        if(!reset_n) begin
            grant   <= 16'b0;
            busy    <= 1'b0;
        end
    end
    
    always_comb begin
       for(i = 0; i < 16; i = i + 1) begin
            case(i)
                0:    higherRequests = 1'b0;
                1:    higherRequests = request[0];
                2:    higherRequests = |request[1:0];
                3:    higherRequests = |request[2:0];
                4:    higherRequests = |request[3:0];
                5:    higherRequests = |request[4:0];
                6:    higherRequests = |request[5:0];
                7:    higherRequests = |request[6:0];
                8:    higherRequests = |request[7:0];
                9:    higherRequests = |request[8:0];
                10:   higherRequests = |request[9:0];
                11:   higherRequests = |request[10:0];
                12:   higherRequests = |request[11:0];
                13:   higherRequests = |request[12:0];
                14:   higherRequests = |request[13:0];
                15:   higherRequests = |request[14:0];
            endcase
            if (!reset_n)
                grant   <= 16'b0;
            else if (noGrant)
                    grant[i] = request[i] & ~higherRequests;
            else if (!noGrant && !higherRequests && (i != 0))
                    grant[i] = request[i];
            else
                    grant[i] = request[i] & grant[i];
       end
    end    
endmodule  
   