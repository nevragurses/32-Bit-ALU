//module for 32 bit ALU 
module Alu_32_Bit ( carryOut,outputAlu,a,b,carryIn,AluOp);
	output carryOut; //carry out of 32 bit ALU.
	output [31:0] outputAlu; //output of 32 bit ALU.
	
	input[31:0] a;
	input [31:0]b;
	input [2:0 ] AluOp;
	input carryIn;
	
	
	wire V,set,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;
	
	
	Alu_1Bit alu0 (c1,outputAlu[0],a[0],b[0],AluOp[2],set,AluOp);
	Alu_1Bit alu1 (c2,outputAlu[1],a[1],b[1],c1,0,AluOp);
	Alu_1Bit alu2 (c3,outputAlu[2],a[2],b[2],c2,0,AluOp);
	Alu_1Bit alu3 (c4,outputAlu[3],a[3],b[3],c3,0,AluOp);
	Alu_1Bit alu4 (c5,outputAlu[4],a[4],b[4],c4,0,AluOp);
	Alu_1Bit alu5 (c6,outputAlu[5],a[5],b[5],c5,0,AluOp);
	Alu_1Bit alu6 (c7,outputAlu[6],a[6],b[6],c6,0,AluOp);
	Alu_1Bit alu7 (c8,outputAlu[7],a[7],b[7],c7,0,AluOp);
	Alu_1Bit alu8 (c9,outputAlu[8],a[8],b[8],c8,0,AluOp);
	Alu_1Bit alu9 (c10,outputAlu[9],a[9],b[9],c9,0,AluOp);
	Alu_1Bit alu10 (c11,outputAlu[10],a[10],b[10],c10,0,AluOp);
	Alu_1Bit alu11 (c12,outputAlu[11],a[11],b[11],c11,0,AluOp);
	Alu_1Bit alu12 (c13,outputAlu[12],a[12],b[12],c12,0,AluOp);
	Alu_1Bit alu13 (c14,outputAlu[13],a[13],b[13],c13,0,AluOp);
	Alu_1Bit alu14 (c15,outputAlu[14],a[14],b[14],c14,0,AluOp);
	Alu_1Bit alu15 (c16,outputAlu[15],a[15],b[15],c15,0,AluOp);
	Alu_1Bit alu16 (c17,outputAlu[16],a[16],b[16],c16,0,AluOp);
	Alu_1Bit alu17 (c18,outputAlu[17],a[17],b[17],c17,0,AluOp);
	Alu_1Bit alu18 (c19,outputAlu[18],a[18],b[18],c18,0,AluOp);
	Alu_1Bit alu19 (c20,outputAlu[19],a[19],b[19],c19,0,AluOp);
	Alu_1Bit alu20 (c21,outputAlu[20],a[20],b[20],c20,0,AluOp);
	Alu_1Bit alu21 (c22,outputAlu[21],a[21],b[21],c21,0,AluOp);
	Alu_1Bit alu22 (c23,outputAlu[22],a[22],b[22],c22,0,AluOp);
	Alu_1Bit alu23 (c24,outputAlu[23],a[23],b[23],c23,0,AluOp);
	Alu_1Bit alu24 (c25,outputAlu[24],a[24],b[24],c24,0,AluOp);
	Alu_1Bit alu25 (c26,outputAlu[25],a[25],b[25],c25,0,AluOp);
	Alu_1Bit alu26 (c27,outputAlu[26],a[26],b[26],c26,0,AluOp);
	Alu_1Bit alu27 (c28,outputAlu[27],a[27],b[27],c27,0,AluOp);
	Alu_1Bit alu28 (c29,outputAlu[28],a[28],b[28],c28,0,AluOp);
	Alu_1Bit alu29 (c30,outputAlu[29],a[29],b[29],c29,0,AluOp);
	Alu_1Bit alu30 (c31,outputAlu[30],a[30],b[30],c30,0,AluOp);
	MSB_1BitAlu alu31 (carryOut,outputAlu[31],V,set,a[31],b[31],c31,0,AluOp);
	

endmodule