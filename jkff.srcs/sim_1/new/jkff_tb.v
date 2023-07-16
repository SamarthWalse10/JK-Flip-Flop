`timescale 1ns / 1ps

module jkff_tb();
reg tclk,tJ,tK;
wire tQ,tQb;

jkff dut(.clk(tclk), .J(tJ), .K(tK), .Q(tQ), .Qb(tQb));

initial begin
    tclk = 0;
    forever #16 tclk = ~tclk;
end
initial begin
    tJ = 0;
    forever #24 tJ = ~tJ;
end
initial begin
    tK = 0;
    forever #32 tK = ~tK;
end

endmodule



//`timescale 1ns / 1ps

//module jkff_tb();
//reg tclk,tJ,tK;
//wire tQ,tQb;

//jkff dut(.clk(tclk), .J(tJ), .K(tK), .Q(tQ), .Qb(tQb));

//initial begin
//tclk=0;tJ=0;tK=0;
//#2
//tclk=1;tJ=0;tK=0;
//#2
//tclk=0;tJ=1;tK=0;
//#2
//tclk=1;tJ=0;tK=1;
//#2
//tclk=0;tJ=1;tK=1;
//#2
//tclk=1;tJ=1;tK=0;
//#2
//tclk=0;tJ=0;tK=0;
//#2
//tclk=1;tJ=0;tK=0;
//#2
//tclk=0;tJ=1;tK=0;
//#2
//tclk=1;tJ=1;tK=1;
//#2
//tclk=0;tJ=0;tK=1;
//#2
//tclk=1;tJ=0;tK=0;
//#2
//tclk=0;tJ=1;tK=0;
//#2
//tclk=1;tJ=1;tK=1;
//#2
//tclk=0;tJ=0;tK=1;
//#2
//tclk=1;tJ=1;tK=0;
//#2
//tclk=0;tJ=1;tK=1;
//#2
//tclk=1;tJ=1;tK=1;
//#2
//tclk=0;tJ=1;tK=1;
//#2
//tclk=1;tJ=0;tK=0;
//#2
//tclk=0;tJ=1;tK=0;
//#2
//$stop;
//end

//endmodule
