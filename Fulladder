module FullAdder (
    input A, 
    input B, 
    input Cin,
    output Sum, 
    output Cout
);

    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule
module FullAdder_Testbench;
    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate the full adder module
    FullAdder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Stimulus
    initial begin
        // Test case 1
        A = 0; B = 0; Cin = 0;
        #10 $display("Sum=%b, Cout=%b", Sum, Cout);

        // Test case 2
        A = 1; B = 1; Cin = 1;
        #10 $display("Sum=%b, Cout=%b", Sum, Cout);

        // Add more test cases as needed

        $finish; // End simulation
    end
endmodule
