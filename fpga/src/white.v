`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2025 05:37:59 PM
// Design Name: 
// Module Name: white
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


module white(
    input wire clk,
    input wire enable,
    input wire axis_tready,
    output wire [31:0] axis_tdata,
    output wire [7:0] axis_tkeep,
    output wire axis_tvalid,
    output wire axis_tlast
);
localparam  BLOCK_SIZE = 1024;
reg axis_tvalid_i;
reg [31:0] buffers;
// Move a block of 64 32-bit incrementing numbers through AXI4-stream 
always @(posedge clk) 
begin 
    if (~enable) begin 
        buffers <= 32'd0; 
        axis_tvalid_i <= 1'b0; 
    end else begin 
        if (axis_tready && axis_tvalid_i) begin 
            buffers <= buffers + 1; 
        end 
        if (buffers >= BLOCK_SIZE-1) begin 
            axis_tvalid_i <= 1'b0; 
        end else begin 
            axis_tvalid_i <= 1'b1; 
        end 
    end
end 
assign axis_tvalid = axis_tvalid_i; 
assign axis_tkeep = 4'b1111;
assign axis_tdata = buffers;
assign axis_tlast = (buffers == BLOCK_SIZE-1)? 1'b1: 1'b0; 

endmodule
    
    
    