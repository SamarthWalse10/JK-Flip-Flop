`timescale 1ns / 1ps

module jkff(clk,J,K,Q,Qb);
input clk,J,K;
output reg Q,Qb;

initial begin
    Q = 0; 
    Qb = 1;
end

always @ (negedge clk) begin
    if (J==0 & K==0) begin
        Q <= Q; Qb <= Qb;
    end
    else if (J==1 & K==0) begin
        Q <= 1; Qb <= 0;
    end
    else if (J==0 & K==1)  begin
        Q <= 0; Qb <= 1;
    end
    else if (J==1 & K==1)  begin
        Q <= ~Q; Qb <= ~Qb;
    end
end

endmodule



//`timescale 1ns / 1ps

//module jkff(clk,J,K,Q,Qb);
//input clk,J,K;
//output reg Q,Qb;

//initial begin
//    assign Q = 1; 
//    assign Qb = 0;
//end

//always @(posedge clk) begin
//    assign Q = ~((~(J & clk & Qb)) & Qb);
//    assign Qb = ~((~(K & clk & Q)) & Q);
//end

//endmodule
