`timescale 1ns / 1ps
module DFF_async_rstn(clk,
                      async_rstn,
                      d,
                      q);
input clk;
input async_rstn;
input d;
output reg q;

always@(posedge clk, posedge async_rstn)begin
    if(async_rstn)
        q <= 1'b0;
    else
        q <= d;    
end

endmodule
