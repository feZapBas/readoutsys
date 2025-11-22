`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 05:37:59 PM
// Design Name: 
// Module Name: snow
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


module snow(
    input wire clk,
    input wire enable,
    input wire axis_tready,
    output wire [31:0] axis_tdata,
    output wire [3:0] axis_tkeep,
    output wire axis_tvalid,
    output wire axis_tlast
//    input wire dummy
);
localparam  BLOCK_SIZE = 1024;


reg axis_tvalid_i;
reg [31:0] buffer;
// Move a block of 64 32-bit incrementing numbers through AXI4-stream 
always @(posedge clk) 
begin 
    if (~enable) begin 
        buffer <= BLOCK_SIZE; 
        axis_tvalid_i <= 1'b0; 
    end else begin 
//    if (axis_tready && (buffer != 0)) begin
//        axis_tvalid_i <= 1'b1;
//        buffer <= buffer - 7; 
//    end else begin
//        axis_tvalid_i <= 1'b0;
//    end

        if (axis_tready && axis_tvalid_i) begin 
            buffer <= buffer - 1; 
        end 
        if (buffer >= 0) begin 
            axis_tvalid_i <= 1'b0; 
        end else begin 
             axis_tvalid_i <= 1'b1; 
        end 
    end 
end 
assign axis_tvalid = axis_tvalid_i; 
assign axis_tkeep = 4'b1111;
assign axis_tdata = buffer;
assign axis_tlast = (buffer == 0)? 1'b1: 1'b0; 

endmodule
    