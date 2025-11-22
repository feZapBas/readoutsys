`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 11:23:10 AM
// Design Name: 
// Module Name: T1
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


module T1(
   input  wire clk,
    input  wire enable,
//    input  wire pulse,
    input  wire T1_n,
    input  wire T1_p,
//    output wire T1_trigger,
    output wire T1_Arrived_Pulse
    );

reg r1_Data, r2_Data, r3_Data;   
reg [31:0] T1_Start_Sequence;
reg T1_Arrived_Pulse_i, Tr1ger;
 
wire T1; 
IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("LVDS_25")) gpio_lvds_buf (
.I(T1_p),
.IB(T1_n),
.O(T1)
);
   /* 
metaestabilidad sTab1e(
    .clk(clk),
    .d(T1),
    .rst(enable),
    .q(meta)
    );
*/

always @(posedge clk)
  begin
  if (~enable) begin
        T1_Start_Sequence <= 16'b0;
        T1_Arrived_Pulse_i <= 1'b0;
        r1_Data <= 1'b0;
        r2_Data <= 1'b0;
        r3_Data <= 1'b0;
        Tr1ger <= 1'b0;
        
    end 
    r1_Data <= T1;
    r2_Data <= r1_Data;
    r3_Data <= r2_Data;
    Tr1ger <= ~r3_Data;
    T1_Start_Sequence <= {T1_Start_Sequence[14:0], Tr1ger};

    if (T1_Start_Sequence[3:0] == 4'b1100 || T1_Start_Sequence[3:0] == 4'b0011) begin
        T1_Arrived_Pulse_i <= 1'b1;
    end else begin
        T1_Arrived_Pulse_i <= 1'b0;
    end
    
   
end
    
//    assign T1_trigger = T1_Arrived_Pulse_i || pulse;
    assign T1_Arrived_Pulse = T1_Arrived_Pulse_i;
endmodule
