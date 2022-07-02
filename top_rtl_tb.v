`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mahesh Bhat K
// 
// Create Date: 
// Design Name: 
// Module Name: top_rtl_tb
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


module top_rtl_tb(    );
reg [31:0]HADDR,HWDATA,PRDATA;
reg [1:0]HTRANS;
reg HREADYin,HWRITE,HRESETn,HCLK;
reg [2:0]HSIZE;
wire [31:0]PADDR,PWDATA,HRDATA;
wire [1:0]HRESP;
wire PWRITE,PENABLE,HREADYout;
wire [2:0]PSEL;

top_rtl top1(HADDR,HWDATA,HTRANS,HREADYin,HWRITE,HRESP,
	   HRDATA,HREADYout,HSIZE,HRESETn,HCLK,PADDR,
	   PWDATA,PSEL,PWRITE,PENABLE,PRDATA);

always
begin
HCLK=1'b1;
#10;
HCLK=~HCLK;
#10;
end

initial
begin
PRDATA=32'd31;
HRESETn=0;
#10
HRESETn=1;
end

initial
begin
HADDR= 32'd10;
HWDATA=32'd5;
HTRANS=2'd0;
HREADYin=1;
HWRITE=1;
HSIZE=1;


end
endmodule
