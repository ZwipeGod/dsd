module HalfAdder (
    input A, 
    input B, 
    output Sum, 
    output Cout
);

    assign Sum = A ^ B;
    assign Cout = A & B;

endmodule
module HalfAdder_Testbench;
    reg A, B;
    wire Sum, Cout;

    // Instantiate the half adder module
    HalfAdder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Stimulus
    initial begin
        // Test case 1
        A = 0; B = 0;
        #10 $display("Sum=%b, Cout=%b", Sum, Cout);

        // Test case 2
        A = 1; B = 0;
        #10 $display("Sum=%b, Cout=%b", Sum, Cout);

        // Add more test cases as needed

        $finish; // End simulation
    end
endmodule
