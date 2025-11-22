`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2025 12:37:00 PM
// Design Name: 
// Module Name: timestamp
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


module timestamp(
    input wire clk,
    input wire enable,
    input wire andes_pix,
    input wire T1,
    input  wire pulse,
    output wire Trigger,
    input wire m_axis_tready, 
    output wire [63:0] m_axis_tdata,  
    output wire m_axis_tvalid,
    output wire [7:0] m_axis_tkeep,
    output wire m_axis_tlast
    );

localparam BLOCK_SIZE = 256;
reg [31:0] global_counter;
reg [63:0] buffer;
reg axis_tvalid_i;
reg [15:0] counter;
reg andespix_trigger;


always @(posedge clk) begin
    if (~enable) begin
        buffer <= 64'b0;
        axis_tvalid_i <= 1'b0;
        global_counter <= 16'b0;
        counter <= 16'b0;
    end else begin
        if (m_axis_tready && axis_tvalid_i) begin 
            global_counter <= global_counter + 1;
            counter <= counter + 1;
        end 
        if (counter >= BLOCK_SIZE -1) begin 
            axis_tvalid_i <= 1'b0; 
            counter <= 16'b0;
        end else begin 
            axis_tvalid_i <= 1'b1; 
            andespix_trigger <= 1'b0;
        end 
        if (T1) begin
            buffer[63:31] <= global_counter; 
        end
        if (andes_pix) begin
            buffer[30:0] <= global_counter; 
        end
    end
end

assign Trigger = T1 || pulse;
// AXI protocol
assign m_axis_tdata  = buffer;
assign m_axis_tvalid = axis_tvalid_i;
assign m_axis_tkeep  = 8'b11111111;
assign m_axis_tlast  = (counter == BLOCK_SIZE - 1) ? 1'b1 : 1'b0;    
    
endmodule
