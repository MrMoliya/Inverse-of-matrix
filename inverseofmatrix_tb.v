`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Engineer:Mr. Moliya
// Design Name:   inverseofmatrix
// Module Name:   E:/Users/Mr. Moliya/Documents/Xilinx Projects/inverse-of-matrix/inverseofmatrix_tb.v
// Project Name:  inverse-of-matrix
// Target Device:  FPGA
// Verilog Test Fixture created by ISE for module: inverseofmatrix
////////////////////////////////////////////////////////////////////////////////

module inverseofmatrix_tb;

	// Inputs
	reg [7:0] a11;
	reg [7:0] a12;
	reg [7:0] a13;
	reg [7:0] a14;
	reg [7:0] a15;
	reg [7:0] a21;
	reg [7:0] a22;
	reg [7:0] a23;
	reg [7:0] a24;
	reg [7:0] a25;
	reg [7:0] a31;
	reg [7:0] a32;
	reg [7:0] a33;
	reg [7:0] a34;
	reg [7:0] a35;
	reg [7:0] a41;
	reg [7:0] a42;
	reg [7:0] a43;
	reg [7:0] a44;
	reg [7:0] a45;
	reg [7:0] a51;
	reg [7:0] a52;
	reg [7:0] a53;
	reg [7:0] a54;
	reg [7:0] a55;

	// Outputs
	wire [7:0] b11;
	wire [7:0] b12;
	wire [7:0] b13;
	wire [7:0] b14;
	wire [7:0] b15;
	wire [7:0] b21;
	wire [7:0] b22;
	wire [7:0] b23;
	wire [7:0] b24;
	wire [7:0] b25;
	wire [7:0] b31;
	wire [7:0] b32;
	wire [7:0] b33;
	wire [7:0] b34;
	wire [7:0] b35;
	wire [7:0] b41;
	wire [7:0] b42;
	wire [7:0] b43;
	wire [7:0] b44;
	wire [7:0] b45;
	wire [7:0] b51;
	wire [7:0] b52;
	wire [7:0] b53;
	wire [7:0] b54;
	wire [7:0] b55;

	// Instantiate the Unit Under Test (UUT)
	inverseofmatrix uut (
		.a11(a11), 
		.a12(a12), 
		.a13(a13), 
		.a14(a14), 
		.a15(a15), 
		.a21(a21), 
		.a22(a22), 
		.a23(a23), 
		.a24(a24), 
		.a25(a25), 
		.a31(a31), 
		.a32(a32), 
		.a33(a33), 
		.a34(a34), 
		.a35(a35), 
		.a41(a41), 
		.a42(a42), 
		.a43(a43), 
		.a44(a44), 
		.a45(a45), 
		.a51(a51), 
		.a52(a52), 
		.a53(a53), 
		.a54(a54), 
		.a55(a55), 
		.b11(b11), 
		.b12(b12), 
		.b13(b13), 
		.b14(b14), 
		.b15(b15), 
		.b21(b21), 
		.b22(b22), 
		.b23(b23), 
		.b24(b24), 
		.b25(b25), 
		.b31(b31), 
		.b32(b32), 
		.b33(b33), 
		.b34(b34), 
		.b35(b35), 
		.b41(b41), 
		.b42(b42), 
		.b43(b43), 
		.b44(b44), 
		.b45(b45), 
		.b51(b51), 
		.b52(b52), 
		.b53(b53), 
		.b54(b54), 
		.b55(b55)
	);

	initial begin
		// Initialize Inputs
		//give inputs value...
	a11 = 1;
		a12 = 0;
		a13 = 0;
		a14 = 0;
		a15 = 1;
		a21 = 1;
		a22 = 1;
		a23 = 0;
		a24 = 0;
		a25 = 1;
		a31 = 1;
		a32 = 0;
		a33 = 1;
		a34 = 0;
		a35 = 1;
		a41 = 0;
		a42 = 0;
		a43 = 0;
		a44 = 1;
		a45 = 0;
		a51 = 0;
		a52 = 1;
		a53 = 0;
		a54 = 0;
		a55 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

