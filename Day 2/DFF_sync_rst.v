`timescale 1ns / 1ps
module DFF_sync_rstn(clk,
                     sync_rstn,
                     d,
                     q);
input clk;
input sync_rstn;
input d;
output reg q;

always@(posedge clk)begin
    if(sync_rstn)
        q <= 1'b0;
    else
        q <= d;    
end

endmodule
