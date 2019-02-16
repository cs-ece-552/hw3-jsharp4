/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2
    
    a 4-bit RCA module
*/
module rca_4b(A, B, C_in, S, C_out);

    // declare constant for size of inputs, outputs (N)
    parameter   N = 4;

    input [N-1: 0] A, B;
    input          C_in;
    output [N-1:0] S;
    output         C_out;

	wire c_out[N-2:0];

    // YOUR CODE HERE
	fullAdder_1b adder_1b_0(.A(A[0]), .B(B[0]), .C_in(C_in), .S(S[0]), .C_out(c_out[0]));

	genvar i;
	generate
	for (i = 1; i < N - 1; i = i + 1) begin
		fullAdder_1b adder_1b(.A(A[i]), .B(B[i]), .C_in(c_out[i - 1]), .S(S[i]), .C_out(c_out[i]));
	end
	endgenerate
	
	fullAdder_1b adder_0(.A(A[N - 1]), .B(B[N - 1]), .C_in(c_out[N - 2]), .S(S[N - 1]), .C_out(C_out));

endmodule
