/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    a 4-bit (quad) 4-1 Mux template
*/
module mux4_1_4b(InA, InB, InC, InD, S, Out);

    // parameter N for length of inputs and outputs (to use with larger inputs/outputs)
    parameter N = 4;

    input [N-1:0]   InA, InB, InC, InD;
    input [1:0]     S;
    output [N-1:0]  Out;

    // YOUR CODE HERE
	genvar i;
	generate
	for (i = 0; i < N; i = i + 1) begin
		mux4_1 mux_1_b(.S(S[1:0]), .InA(InA[i]), .InB(InB[i]), .InC(InC[i]), .InD(InD[i]), .Out(Out[i]));
	end
	endgenerate


endmodule
