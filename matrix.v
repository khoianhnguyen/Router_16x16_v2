`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 08:33:42 PM
// Design Name: 
// Module Name: matrix
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


module matrix(
    input [15:0] frame_n0,
    input [15:0] frame_n1,
    input [15:0] frame_n2,
    input [15:0] frame_n3,
    input [15:0] frame_n4,
    input [15:0] frame_n5,
    input [15:0] frame_n6,
    input [15:0] frame_n7,
    input [15:0] frame_n8,
    input [15:0] frame_n9,
    input [15:0] frame_n10,
    input [15:0] frame_n11,
    input [15:0] frame_n12,
    input [15:0] frame_n14,
    input [15:0] frame_n13,
    input [15:0] frame_n15,
    input [15:0] valid_n0,
    input [15:0] valid_n1,
    input [15:0] valid_n2,
    input [15:0] valid_n3,
    input [15:0] valid_n4,
    input [15:0] valid_n5,
    input [15:0] valid_n6,
    input [15:0] valid_n7,
    input [15:0] valid_n8,
    input [15:0] valid_n9,
    input [15:0] valid_n10,
    input [15:0] valid_n11,
    input [15:0] valid_n12,
    input [15:0] valid_n13,
    input [15:0] valid_n14,
    input [15:0] valid_n15,
    input [15:0] din0,
    input [15:0] din1,
    input [15:0] din2,
    input [15:0] din3,
    input [15:0] din4,
    input [15:0] din5,
    input [15:0] din6,
    input [15:0] din7,
    input [15:0] din8,
    input [15:0] din9,
    input [15:0] din10,
    input [15:0] din11,
    input [15:0] din12,
    input [15:0] din13,
    input [15:0] din14,
    input [15:0] din15,
    input [15:0] request0,
    input [15:0] request1,
    input [15:0] request2,
    input [15:0] request3,
    input [15:0] request4,
    input [15:0] request5,
    input [15:0] request6,
    input [15:0] request7,
    input [15:0] request8,
    input [15:0] request9,
    input [15:0] request10,
    input [15:0] request11,
    input [15:0] request12,
    input [15:0] request13,
    input [15:0] request14,
    input [15:0] request15,
    output [15:0] frame_o0,
    output [15:0] frame_o1,
    output [15:0] frame_o2,
    output [15:0] frame_o3,
    output [15:0] frame_o4,
    output [15:0] frame_o5,
    output [15:0] frame_o6,
    output [15:0] frame_o7,
    output [15:0] frame_o8,
    output [15:0] frame_o9,
    output [15:0] frame_o10,
    output [15:0] frame_o11,
    output [15:0] frame_o12,
    output [15:0] frame_o13,
    output [15:0] frame_o14,
    output [15:0] frame_o15,
    output [15:0] valid_o0,
    output [15:0] valid_o1,
    output [15:0] valid_o2,
    output [15:0] valid_o3,
    output [15:0] valid_o4,
    output [15:0] valid_o5,
    output [15:0] valid_o6,
    output [15:0] valid_o7,
    output [15:0] valid_o8,
    output [15:0] valid_o9,
    output [15:0] valid_o10,
    output [15:0] valid_o11,
    output [15:0] valid_o12,
    output [15:0] valid_o13,
    output [15:0] valid_o14,
    output [15:0] valid_o15,
    output [15:0] dout0,
    output [15:0] dout1,
    output [15:0] dout2,
    output [15:0] dout3,
    output [15:0] dout4,
    output [15:0] dout5,
    output [15:0] dout6,
    output [15:0] dout7,
    output [15:0] dout8,
    output [15:0] dout9,
    output [15:0] dout10,
    output [15:0] dout11,
    output [15:0] dout12,
    output [15:0] dout13,
    output [15:0] dout14,
    output [15:0] dout15,
    output [15:0] request_o0,
    output [15:0] request_o1,
    output [15:0] request_o2,
    output [15:0] request_o3,
    output [15:0] request_o4,
    output [15:0] request_o5,
    output [15:0] request_o6,
    output [15:0] request_o7,
    output [15:0] request_o8,
    output [15:0] request_o9,
    output [15:0] request_o10,
    output [15:0] request_o11,
    output [15:0] request_o12,
    output [15:0] request_o13,
    output [15:0] request_o14,
    output [15:0] request_o15   
    );
    assign frame_o0 = {frame_n15[0], frame_n14[0], frame_n13[0], frame_n12[0], frame_n11[0], frame_n10[0], frame_n9[0], frame_n8[0], frame_n7[0], frame_n6[0], frame_n5[0], frame_n4[0], frame_n3[0], frame_n2[0], frame_n1[0], frame_n0[0]};
    assign frame_o1 = {frame_n15[1], frame_n14[1], frame_n13[1], frame_n12[1], frame_n11[1], frame_n10[1], frame_n9[1], frame_n8[1], frame_n7[1], frame_n6[1], frame_n5[1], frame_n4[1], frame_n3[1], frame_n2[1], frame_n1[1], frame_n0[1]};
    assign frame_o2 = {frame_n15[2], frame_n14[2], frame_n13[2], frame_n12[2], frame_n11[2], frame_n10[2], frame_n9[2], frame_n8[2], frame_n7[2], frame_n6[2], frame_n5[2], frame_n4[2], frame_n3[2], frame_n2[2], frame_n1[2], frame_n0[2]};
    assign frame_o3 = {frame_n15[3], frame_n14[3], frame_n13[3], frame_n12[3], frame_n11[3], frame_n10[3], frame_n9[3], frame_n8[3], frame_n7[3], frame_n6[3], frame_n5[3], frame_n4[3], frame_n3[3], frame_n2[3], frame_n1[3], frame_n0[3]};
    assign frame_o4 = {frame_n15[4], frame_n14[4], frame_n13[4], frame_n12[4], frame_n11[4], frame_n10[4], frame_n9[4], frame_n8[4], frame_n7[4], frame_n6[4], frame_n5[4], frame_n4[4], frame_n3[4], frame_n2[4], frame_n1[4], frame_n0[4]};
    assign frame_o5 = {frame_n15[5], frame_n14[5], frame_n13[5], frame_n12[5], frame_n11[5], frame_n10[5], frame_n9[5], frame_n8[5], frame_n7[5], frame_n6[5], frame_n5[5], frame_n4[5], frame_n3[5], frame_n2[5], frame_n1[5], frame_n0[5]};
    assign frame_o6 = {frame_n15[6], frame_n14[6], frame_n13[6], frame_n12[6], frame_n11[6], frame_n10[6], frame_n9[6], frame_n8[6], frame_n7[6], frame_n6[6], frame_n5[6], frame_n4[6], frame_n3[6], frame_n2[6], frame_n1[6], frame_n0[6]};
    assign frame_o7 = {frame_n15[7], frame_n14[7], frame_n13[7], frame_n12[7], frame_n11[7], frame_n10[7], frame_n9[7], frame_n8[7], frame_n7[7], frame_n6[7], frame_n5[7], frame_n4[7], frame_n3[7], frame_n2[7], frame_n1[7], frame_n0[7]};
    assign frame_o8 = {frame_n15[8], frame_n14[8], frame_n13[8], frame_n12[8], frame_n11[8], frame_n10[8], frame_n9[8], frame_n8[8], frame_n7[8], frame_n6[8], frame_n5[8], frame_n4[8], frame_n3[8], frame_n2[8], frame_n1[8], frame_n0[8]};
    assign frame_o9 = {frame_n15[9], frame_n14[9], frame_n13[9], frame_n12[9], frame_n11[9], frame_n10[9], frame_n9[9], frame_n8[9], frame_n7[9], frame_n6[9], frame_n5[9], frame_n4[9], frame_n3[9], frame_n2[9], frame_n1[9], frame_n0[9]};
    assign frame_o10 = {frame_n15[10], frame_n14[10], frame_n13[10], frame_n12[10], frame_n11[10], frame_n10[10], frame_n9[10], frame_n8[10], frame_n7[10], frame_n6[10], frame_n5[10], frame_n4[10], frame_n3[10], frame_n2[10], frame_n1[10], frame_n0[10]};
    assign frame_o11 = {frame_n15[11], frame_n14[11], frame_n13[11], frame_n12[11], frame_n11[11], frame_n10[11], frame_n9[11], frame_n8[11], frame_n7[11], frame_n6[11], frame_n5[11], frame_n4[11], frame_n3[11], frame_n2[11], frame_n1[11], frame_n0[11]};
    assign frame_o12 = {frame_n15[12], frame_n14[12], frame_n13[12], frame_n12[12], frame_n11[12], frame_n10[12], frame_n9[12], frame_n8[12], frame_n7[12], frame_n6[12], frame_n5[12], frame_n4[12], frame_n3[12], frame_n2[12], frame_n1[12], frame_n0[12]};
    assign frame_o13 = {frame_n15[13], frame_n14[13], frame_n13[13], frame_n12[13], frame_n11[13], frame_n10[13], frame_n9[13], frame_n8[13], frame_n7[13], frame_n6[13], frame_n5[13], frame_n4[13], frame_n3[13], frame_n2[13], frame_n1[13], frame_n0[13]};
    assign frame_o14 = {frame_n15[14], frame_n14[14], frame_n13[14], frame_n12[14], frame_n11[14], frame_n10[14], frame_n9[14], frame_n8[14], frame_n7[14], frame_n6[14], frame_n5[14], frame_n4[14], frame_n3[14], frame_n2[14], frame_n1[14], frame_n0[14]};
    assign frame_o15 = {frame_n15[15], frame_n14[15], frame_n13[15], frame_n12[15], frame_n11[15], frame_n10[15], frame_n9[15], frame_n8[15], frame_n7[15], frame_n6[15], frame_n5[15], frame_n4[15], frame_n3[15], frame_n2[15], frame_n1[15], frame_n0[15]};

    assign valid_o0 = {valid_n15[0], valid_n14[0], valid_n13[0], valid_n12[0], valid_n11[0], valid_n10[0], valid_n9[0], valid_n8[0], valid_n7[0], valid_n6[0], valid_n5[0], valid_n4[0], valid_n3[0], valid_n2[0], valid_n1[0], valid_n0[0]};
    assign valid_o1 = {valid_n15[1], valid_n14[1], valid_n13[1], valid_n12[1], valid_n11[1], valid_n10[1], valid_n9[1], valid_n8[1], valid_n7[1], valid_n6[1], valid_n5[1], valid_n4[1], valid_n3[1], valid_n2[1], valid_n1[1], valid_n0[1]};
    assign valid_o2 = {valid_n15[2], valid_n14[2], valid_n13[2], valid_n12[2], valid_n11[2], valid_n10[2], valid_n9[2], valid_n8[2], valid_n7[2], valid_n6[2], valid_n5[2], valid_n4[2], valid_n3[2], valid_n2[2], valid_n1[2], valid_n0[2]};
    assign valid_o3 = {valid_n15[3], valid_n14[3], valid_n13[3], valid_n12[3], valid_n11[3], valid_n10[3], valid_n9[3], valid_n8[3], valid_n7[3], valid_n6[3], valid_n5[3], valid_n4[3], valid_n3[3], valid_n2[3], valid_n1[3], valid_n0[3]};
    assign valid_o4 = {valid_n15[4], valid_n14[4], valid_n13[4], valid_n12[4], valid_n11[4], valid_n10[4], valid_n9[4], valid_n8[4], valid_n7[4], valid_n6[4], valid_n5[4], valid_n4[4], valid_n3[4], valid_n2[4], valid_n1[4], valid_n0[4]};
    assign valid_o5 = {valid_n15[5], valid_n14[5], valid_n13[5], valid_n12[5], valid_n11[5], valid_n10[5], valid_n9[5], valid_n8[5], valid_n7[5], valid_n6[5], valid_n5[5], valid_n4[5], valid_n3[5], valid_n2[5], valid_n1[5], valid_n0[5]};
    assign valid_o6 = {valid_n15[6], valid_n14[6], valid_n13[6], valid_n12[6], valid_n11[6], valid_n10[6], valid_n9[6], valid_n8[6], valid_n7[6], valid_n6[6], valid_n5[6], valid_n4[6], valid_n3[6], valid_n2[6], valid_n1[6], valid_n0[6]};
    assign valid_o7 = {valid_n15[7], valid_n14[7], valid_n13[7], valid_n12[7], valid_n11[7], valid_n10[7], valid_n9[7], valid_n8[7], valid_n7[7], valid_n6[7], valid_n5[7], valid_n4[7], valid_n3[7], valid_n2[7], valid_n1[7], valid_n0[7]};
    assign valid_o8 = {valid_n15[8], valid_n14[8], valid_n13[8], valid_n12[8], valid_n11[8], valid_n10[8], valid_n9[8], valid_n8[8], valid_n7[8], valid_n6[8], valid_n5[8], valid_n4[8], valid_n3[8], valid_n2[8], valid_n1[8], valid_n0[8]};
    assign valid_o9 = {valid_n15[9], valid_n14[9], valid_n13[9], valid_n12[9], valid_n11[9], valid_n10[9], valid_n9[9], valid_n8[9], valid_n7[9], valid_n6[9], valid_n5[9], valid_n4[9], valid_n3[9], valid_n2[9], valid_n1[9], valid_n0[9]};
    assign valid_o10 = {valid_n15[10], valid_n14[10], valid_n13[10], valid_n12[10], valid_n11[10], valid_n10[10], valid_n9[10], valid_n8[10], valid_n7[10], valid_n6[10], valid_n5[10], valid_n4[10], valid_n3[10], valid_n2[10], valid_n1[10], valid_n0[10]};
    assign valid_o11 = {valid_n15[11], valid_n14[11], valid_n13[11], valid_n12[11], valid_n11[11], valid_n10[11], valid_n9[11], valid_n8[11], valid_n7[11], valid_n6[11], valid_n5[11], valid_n4[11], valid_n3[11], valid_n2[11], valid_n1[11], valid_n0[11]};
    assign valid_o12 = {valid_n15[12], valid_n14[12], valid_n13[12], valid_n12[12], valid_n11[12], valid_n10[12], valid_n9[12], valid_n8[12], valid_n7[12], valid_n6[12], valid_n5[12], valid_n4[12], valid_n3[12], valid_n2[12], valid_n1[12], valid_n0[12]};
    assign valid_o13 = {valid_n15[13], valid_n14[13], valid_n13[13], valid_n12[13], valid_n11[13], valid_n10[13], valid_n9[13], valid_n8[13], valid_n7[13], valid_n6[13], valid_n5[13], valid_n4[13], valid_n3[13], valid_n2[13], valid_n1[13], valid_n0[13]};
    assign valid_o14 = {valid_n15[14], valid_n14[14], valid_n13[14], valid_n12[14], valid_n11[14], valid_n10[14], valid_n9[14], valid_n8[14], valid_n7[14], valid_n6[14], valid_n5[14], valid_n4[14], valid_n3[14], valid_n2[14], valid_n1[14], valid_n0[14]};
    assign valid_o15 = {valid_n15[15], valid_n14[15], valid_n13[15], valid_n12[15], valid_n11[15], valid_n10[15], valid_n9[15], valid_n8[15], valid_n7[15], valid_n6[15], valid_n5[15], valid_n4[15], valid_n3[15], valid_n2[15], valid_n1[15], valid_n0[15]};
    
    assign dout0 = {din15[0], din14[0], din13[0], din12[0], din11[0], din10[0], din9[0], din8[0], din7[0], din6[0], din5[0], din4[0], din3[0], din2[0], din1[0], din0[0]};
    assign dout1 = {din15[1], din14[1], din13[1], din12[1], din11[1], din10[1], din9[1], din8[1], din7[1], din6[1], din5[1], din4[1], din3[1], din2[1], din1[1], din0[1]};
    assign dout2 = {din15[2], din14[2], din13[2], din12[2], din11[2], din10[2], din9[2], din8[2], din7[2], din6[2], din5[2], din4[2], din3[2], din2[2], din1[2], din0[2]};
    assign dout3 = {din15[3], din14[3], din13[3], din12[3], din11[3], din10[3], din9[3], din8[3], din7[3], din6[3], din5[3], din4[3], din3[3], din2[3], din1[3], din0[3]};
    assign dout4 = {din15[4], din14[4], din13[4], din12[4], din11[4], din10[4], din9[4], din8[4], din7[4], din6[4], din5[4], din4[4], din3[4], din2[4], din1[4], din0[4]};
    assign dout5 = {din15[5], din14[5], din13[5], din12[5], din11[5], din10[5], din9[5], din8[5], din7[5], din6[5], din5[5], din4[5], din3[5], din2[5], din1[5], din0[5]};
    assign dout6 = {din15[6], din14[6], din13[6], din12[6], din11[6], din10[6], din9[6], din8[6], din7[6], din6[6], din5[6], din4[6], din3[6], din2[6], din1[6], din0[6]};
    assign dout7 = {din15[7], din14[7], din13[7], din12[7], din11[7], din10[7], din9[7], din8[7], din7[7], din6[7], din5[7], din4[7], din3[7], din2[7], din1[7], din0[7]};
    assign dout8 = {din15[8], din14[8], din13[8], din12[8], din11[8], din10[8], din9[8], din8[8], din7[8], din6[8], din5[8], din4[8], din3[8], din2[8], din1[8], din0[8]};
    assign dout9 = {din15[9], din14[9], din13[9], din12[9], din11[9], din10[9], din9[9], din8[9], din7[9], din6[9], din5[9], din4[9], din3[9], din2[9], din1[9], din0[9]};
    assign dout10 = {din15[10], din14[10], din13[10], din12[10], din11[10], din10[10], din9[10], din8[10], din7[10], din6[10], din5[10], din4[10], din3[10], din2[10], din1[10], din0[10]};
    assign dout11 = {din15[11], din14[11], din13[11], din12[11], din11[11], din10[11], din9[11], din8[11], din7[11], din6[11], din5[11], din4[11], din3[11], din2[11], din1[11], din0[11]};
    assign dout12 = {din15[12], din14[12], din13[12], din12[12], din11[12], din10[12], din9[12], din8[12], din7[12], din6[12], din5[12], din4[12], din3[12], din2[12], din1[12], din0[12]};
    assign dout13 = {din15[13], din14[13], din13[13], din12[13], din11[13], din10[13], din9[13], din8[13], din7[13], din6[13], din5[13], din4[13], din3[13], din2[13], din1[13], din0[13]};
    assign dout14 = {din15[14], din14[14], din13[14], din12[14], din11[14], din10[14], din9[14], din8[14], din7[14], din6[14], din5[14], din4[14], din3[14], din2[14], din1[14], din0[14]};
    assign dout15 = {din15[15], din14[15], din13[15], din12[15], din11[15], din10[15], din9[15], din8[15], din7[15], din6[15], din5[15], din4[15], din3[15], din2[15], din1[15], din0[15]};

    assign request_o0 = {request15[0], request14[0], request13[0], request12[0], request11[0], request10[0], request9[0], request8[0], request7[0], request6[0], request5[0], request4[0], request3[0], request2[0], request1[0], request0[0]};
    assign request_o1 = {request15[1], request14[1], request13[1], request12[1], request11[1], request10[1], request9[1], request8[1], request7[1], request6[1], request5[1], request4[1], request3[1], request2[1], request1[1], request0[1]};
    assign request_o2 = {request15[2], request14[2], request13[2], request12[2], request11[2], request10[2], request9[2], request8[2], request7[2], request6[2], request5[2], request4[2], request3[2], request2[2], request1[2], request0[2]};
    assign request_o3 = {request15[3], request14[3], request13[3], request12[3], request11[3], request10[3], request9[3], request8[3], request7[3], request6[3], request5[3], request4[3], request3[3], request2[3], request1[3], request0[3]};
    assign request_o4 = {request15[4], request14[4], request13[4], request12[4], request11[4], request10[4], request9[4], request8[4], request7[4], request6[4], request5[4], request4[4], request3[4], request2[4], request1[4], request0[4]};
    assign request_o5 = {request15[5], request14[5], request13[5], request12[5], request11[5], request10[5], request9[5], request8[5], request7[5], request6[5], request5[5], request4[5], request3[5], request2[5], request1[5], request0[5]};
    assign request_o6 = {request15[6], request14[6], request13[6], request12[6], request11[6], request10[6], request9[6], request8[6], request7[6], request6[6], request5[6], request4[6], request3[6], request2[6], request1[6], request0[6]};
    assign request_o7 = {request15[7], request14[7], request13[7], request12[7], request11[7], request10[7], request9[7], request8[7], request7[7], request6[7], request5[7], request4[7], request3[7], request2[7], request1[7], request0[7]};
    assign request_o8 = {request15[8], request14[8], request13[8], request12[8], request11[8], request10[8], request9[8], request8[8], request7[8], request6[8], request5[8], request4[8], request3[8], request2[8], request1[8], request0[8]};
    assign request_o9 = {request15[9], request14[9], request13[9], request12[9], request11[9], request10[9], request9[9], request8[9], request7[9], request6[9], request5[9], request4[9], request3[9], request2[9], request1[9], request0[9]};
    assign request_o10 = {request15[10], request14[10], request13[10], request12[10], request11[10], request10[10], request9[10], request8[10], request7[10], request6[10], request5[10], request4[10], request3[10], request2[10], request1[10], request0[10]};
    assign request_o11 = {request15[11], request14[11], request13[11], request12[11], request11[11], request10[11], request9[11], request8[11], request7[11], request6[11], request5[11], request4[11], request3[11], request2[11], request1[11], request0[11]};
    assign request_o12 = {request15[12], request14[12], request13[12], request12[12], request11[12], request10[12], request9[12], request8[12], request7[12], request6[12], request5[12], request4[12], request3[12], request2[12], request1[12], request0[12]};
    assign request_o13 = {request15[13], request14[13], request13[13], request12[13], request11[13], request10[13], request9[13], request8[13], request7[13], request6[13], request5[13], request4[13], request3[13], request2[13], request1[13], request0[13]};
    assign request_o14 = {request15[14], request14[14], request13[14], request12[14], request11[14], request10[14], request9[14], request8[14], request7[14], request6[14], request5[14], request4[14], request3[14], request2[14], request1[14], request0[14]};
    assign request_o15 = {request15[15], request14[15], request13[15], request12[15], request11[15], request10[15], request9[15], request8[15], request7[15], request6[15], request5[15], request4[15], request3[15], request2[15], request1[15], request0[15]};


endmodule
