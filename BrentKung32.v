module BrentKung32(out,in1,in2,c0);

input [31:0]in1,in2;
input c0;
output [32:0]out;

wire [31:0]g,p;
wire [30:0]s1;
wire [14:0]s2;
wire [6:0]s3;
wire [2:0]s4;
wire s5;
wire s6;
wire [2:0]s7;
wire [6:0]s8;
wire [14:0]s9;
wire [31:0]w;
wire [31:0]c;


assign g = in1 & in2;
assign p = in1 | in2;

//Stage 1_________________________________________________
PrefixOperator2 M1(s1[0],g[1],p[1],g[0]); //1
PrefixOperator1 M2(s1[2:1],g[3],p[3],g[2],p[2]); //2
PrefixOperator1 M3(s1[4:3],g[5],p[5],g[4],p[4]); //3
PrefixOperator1 M4(s1[6:5],g[7],p[7],g[6],p[6]); //4

PrefixOperator1 M5(s1[8:7],g[9],p[9],g[8],p[8]); //5
PrefixOperator1 M6(s1[10:9],g[11],p[11],g[10],p[10]); //6
PrefixOperator1 M7(s1[12:11],g[13],p[13],g[12],p[12]); //7
PrefixOperator1 M8(s1[14:13],g[15],p[15],g[14],p[14]); //8

PrefixOperator1 M9(s1[16:15],g[17],p[17],g[16],p[16]); //9
PrefixOperator1 M10(s1[18:17],g[19],p[19],g[18],p[18]); //10
PrefixOperator1 M11(s1[20:19],g[21],p[21],g[20],p[20]); //11
PrefixOperator1 M12(s1[22:21],g[23],p[23],g[22],p[22]); //12

PrefixOperator1 M13(s1[24:23],g[25],p[25],g[24],p[24]); //13
PrefixOperator1 M14(s1[26:25],g[27],p[27],g[26],p[26]); //14
PrefixOperator1 M15(s1[28:27],g[29],p[29],g[28],p[28]); //15
PrefixOperator1 M16(s1[30:29],g[31],p[31],g[30],p[30]); //16

//Stage 2__________________________________________________
PrefixOperator2 M17(s2[0],s1[2],s1[1],s1[0]); //1
PrefixOperator1 M18(s2[2:1],s1[6],s1[5],s1[4],s1[3]); //2
PrefixOperator1 M19(s2[4:3],s1[10],s1[9],s1[8],s1[7]); //3
PrefixOperator1 M20(s2[6:5],s1[14],s1[13],s1[12],s1[11]); //4

PrefixOperator1 M21(s2[8:7],s1[18],s1[17],s1[16],s1[15]); //5
PrefixOperator1 M22(s2[10:9],s1[22],s1[21],s1[20],s1[19]); //6
PrefixOperator1 M23(s2[12:11],s1[26],s1[25],s1[24],s1[23]); //7
PrefixOperator1 M24(s2[14:13],s1[30],s1[29],s1[28],s1[27]); //8

//Stage 3___________________________________________________
PrefixOperator2 M25(s3[0],s2[2],s2[1],s2[0]); //1
PrefixOperator1 M26(s3[2:1],s2[6],s2[5],s2[4],s2[3]); //2
PrefixOperator1 M27(s3[4:3],s2[10],s2[9],s2[8],s2[7]); //3
PrefixOperator1 M28(s3[6:5],s2[14],s2[13],s2[12],s2[11]); //4

//Stage 4___________________________________________________
PrefixOperator2 M29(s4[0],s3[2],s3[1],s3[0]); //1
PrefixOperator1 M30(s4[2:1],s3[6],s3[5],s3[4],s3[3]); //2

//Stage 5___________________________________________________
PrefixOperator2 M31(s5,s4[2],s4[1],s4[0]); //1

//Stage 6___________________________________________________
PrefixOperator2 M32(s6,s3[4],s3[3],s4[0]); //1

//Stage 7___________________________________________________
PrefixOperator2 M33(s7[0],s2[4],s2[3],s3[0]); //1
PrefixOperator2 M34(s7[1],s2[8],s2[7],s4[0]); //2
PrefixOperator2 M35(s7[2],s2[12],s2[11],s6); //3

//Stage 8___________________________________________________
PrefixOperator2 M36(s8[0],s1[4],s1[3],s2[0]); //1
PrefixOperator2 M37(s8[1],s1[8],s1[7],s3[0]); //2
PrefixOperator2 M38(s8[2],s1[12],s1[11],s7[0]); //3
PrefixOperator2 M39(s8[3],s1[16],s1[15],s4[0]); //4

PrefixOperator2 M40(s8[4],s1[20],s1[19],s7[1]); //5
PrefixOperator2 M41(s8[5],s1[24],s1[23],s6); //6
PrefixOperator2 M42(s8[6],s1[28],s1[27],s7[2]); //7

//Stage 9___________________________________________________
PrefixOperator2 M43(s9[0],g[2],p[2],s1[0]); //1
PrefixOperator2 M44(s9[1],g[4],p[4],s2[0]); //2
PrefixOperator2 M45(s9[2],g[6],p[6],s8[0]); //3
PrefixOperator2 M46(s9[3],g[8],p[8],s3[0]); //4

PrefixOperator2 M47(s9[4],g[10],p[10],s8[1]); //5
PrefixOperator2 M48(s9[5],g[12],p[12],s7[0]); //6
PrefixOperator2 M49(s9[6],g[14],p[14],s8[2]); //7
PrefixOperator2 M50(s9[7],g[16],p[16],s4[0]); //8

PrefixOperator2 M51(s9[8],g[18],p[18],s8[3]); //9
PrefixOperator2 M52(s9[9],g[20],p[20],s7[1]); //10
PrefixOperator2 M53(s9[10],g[22],p[22],s8[4]); //11
PrefixOperator2 M54(s9[11],g[24],p[24],s6); //12

PrefixOperator2 M55(s9[12],g[26],p[26],s8[5]); //13
PrefixOperator2 M56(s9[13],g[28],p[28],s7[2]); //14
PrefixOperator2 M57(s9[14],g[30],p[30],s8[6]); //15

//
assign w[0] = p[0] & c0;
assign c[0] = g[0] | w[0];

assign w[1] = w[0] & p[1];
assign c[1] = s1[0] | w[1];

assign w[2] = w[1] & p[2];
assign c[2] = s9[0] | w[2];

assign w[3] = w[2] & p[3];
assign c[3] = s2[0] | w[3];

assign w[4] = w[3] & p[4];
assign c[4] = s9[1] | w[4];

assign w[5] = w[4] & p[5];
assign c[5] = s8[0] | w[5];

assign w[6] = w[5] & p[6];
assign c[6] = s9[2] | w[6];

assign w[7] = w[6] & p[7];
assign c[7] = s3[0] | w[7];

assign w[8] = w[7] & p[8];
assign c[8] = s9[3] | w[8];

assign w[9] = w[8] & p[9];
assign c[9] = s8[1] | w[9];

assign w[10] = w[9] & p[10];
assign c[10] = s9[4] | w[10];

assign w[11] = w[10] & p[11];
assign c[11] = s7[0] | w[11];

assign w[12] = w[11] & p[12];
assign c[12] = s9[5] | w[12];

assign w[13] = w[12] & p[13];
assign c[13] = s8[2] | w[13];

assign w[14] = w[13] & p[14];
assign c[14] = s9[6] | w[14];

assign w[15] = w[14] & p[15];
assign c[15] = s4[0] | w[15];

assign w[16] = w[15] & p[16];
assign c[16] = s9[7] | w[16];

assign w[17] = w[16] & p[17];
assign c[17] = s8[3] | w[17];

assign w[18] = w[17] & p[18];
assign c[18] = s9[8] | w[18];

assign w[19] = w[18] & p[19];
assign c[19] = s7[1] | w[19];

assign w[20] = w[19] & p[20];
assign c[20] = s9[9] | w[20];

assign w[21] = w[20] & p[21];
assign c[21] = s8[4] | w[21];

assign w[22] = w[21] & p[22];
assign c[22] = s9[10] | w[22];

assign w[23] = w[22] & p[23];
assign c[23] = s6 | w[23];

assign w[24] = w[23] & p[24];
assign c[24] = s9[11] | w[24];

assign w[25] = w[24] & p[25];
assign c[25] = s8[5] | w[25];

assign w[26] = w[25] & p[26];
assign c[26] = s9[12] | w[26];

assign w[27] = w[26] & p[27];
assign c[27] = s7[2] | w[27];

assign w[28] = w[27] & p[28];
assign c[28] = s9[13] | w[28];

assign w[29] = w[28] & p[29];
assign c[29] = s8[6] | w[29];

assign w[30] = w[29] & p[30];
assign c[30] = s9[14] | w[30];

assign w[31] = w[30] & p[31];
assign c[31] = s5 | w[31];
//

assign out[31:0] = in1 ^ in2 ^ {c[30:0],c0};
assign out[32] = c[31];

endmodule
