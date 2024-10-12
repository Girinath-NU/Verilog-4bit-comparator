module comparator_1bit(a, b, ag_b, aeqb, al_b);
    input a, b;
    output ag_b, aeqb, al_b;
    
    // Comparison logic
    assign ag_b = (a > b);  // a is greater than b
    assign aeqb = (a == b); // a is equal to b
    assign al_b = (a < b);  // a is less than b
endmodule

module comparator_4bit(A, B, A_gt_B, A_eq_B, A_lt_B);
    input [3:0] A, B;
    output A_gt_B, A_eq_B, A_lt_B;

    wire [3:0] gt, eq, lt;
    
    // Instantiate 1-bit comparators for each bit position
    comparator_1bit comp3(A[3], B[3], gt[3], eq[3], lt[3]);
    comparator_1bit comp2(A[2], B[2], gt[2], eq[2], lt[2]);
    comparator_1bit comp1(A[1], B[1], gt[1], eq[1], lt[1]);
    comparator_1bit comp0(A[0], B[0], gt[0], eq[0], lt[0]);

    // Logic to determine the outputs for the 4-bit comparator
    assign A_gt_B = gt[3] | (eq[3] & gt[2]) | (eq[3] & eq[2] & gt[1]) | (eq[3] & eq[2] & eq[1] & gt[0]);
    assign A_eq_B = eq[3] & eq[2] & eq[1] & eq[0];
    assign A_lt_B = lt[3] | (eq[3] & lt[2]) | (eq[3] & eq[2] & lt[1]) | (eq[3] & eq[2] & eq[1] & lt[0]);
endmodule
