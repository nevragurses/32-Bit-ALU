//test cases for most significant 1 bit ALU module.
`define DELAY 20
module MSB_1Bit_testbench(); 
reg a, b, carryIn,less;
reg [2:0] AluOp;
wire outputAlu, carryOut,V,set;

MSB_1BitAlu msb (carryOut,outputAlu,V,set,a,b,carryIn,less,AluOp);

initial begin
a = 1'b1; b = 1'b1; carryIn = 1'b0; less=1'b0; AluOp[2]=1'b0; AluOp[1]=1'b0; AluOp[0]=1'b0;
#`DELAY;
a = 1'b0; b = 1'b1; carryIn = 1'b1; less=1'b0; AluOp[2]=1'b0; AluOp[1]=1'b0; AluOp[0]=1'b1;
#`DELAY;
a = 1'b1; b = 1'b1; carryIn = 1'b1; less=1'b0; AluOp[2]=1'b0; AluOp[1]=1'b1; AluOp[0]=1'b0;
#`DELAY;
a = 1'b1; b = 1'b0; carryIn = 1'b0; less=1'b0; AluOp[2]=1'b1; AluOp[1]=1'b1; AluOp[0]=1'b0;
#`DELAY;
a = 1'b0; b = 1'b0; carryIn = 1'b0; less=1'b1; AluOp[2]=1'b1; AluOp[1]=1'b1; AluOp[0]=1'b1;

end
 
 
initial
begin
$monitor(" AluOp=%1b%1b%1b , a =%1b, b=%1b, carryIn=%1b, less=%1b,  V=%1b, Set=%1b,carryOut=%1b outputAlu=%1b,", AluOp[2],AluOp[1],AluOp[0] ,a, b, carryIn, less,V,set,carryOut, outputAlu);
end
 
endmodule