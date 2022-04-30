`timescale 1ns / 1ps
module DFF_async_set(clk,
                     async_set,
                     d,
                     q);
input clk;
input async_set;
input d;
output reg q;

always@(posedge clk, posedge async_set)begin
    if(async_set)
        q <= 1'b1;
    else
        q <= d;    
end

endmodule
