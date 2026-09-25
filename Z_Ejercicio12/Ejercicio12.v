module Ejercicio12(
    input  [3:0] SW, 
    output [6:0] HEX3,  
    output [6:0] HEX5
);
    wire A = SW[3];
    wire B = SW[2];
    wire C = SW[1];
    wire D = SW[0];
    wire error;
    assign error = A & (B | C);
    wire seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;

    assign seg_a = A | C | (B & D) | (~B & ~D);
    assign seg_b = ~B | (C & D) | (~C & ~D);
    assign seg_c = B | D | ~C;
    assign seg_d = A | (C & ~B) | (C & ~D) | (~B & ~D) | (B & D & ~C);
    assign seg_e = (C & ~D) | (~B & ~D);
    assign seg_f = A | (B & ~C) | (B & ~D) | (~C & ~D);
    assign seg_g = A | (B & ~C) | (C & ~B) | (C & ~D);

    assign HEX3[0] = ~(seg_a & ~error);
    assign HEX3[1] = ~(seg_b & ~error);
    assign HEX3[2] = ~(seg_c & ~error);
    assign HEX3[3] = ~(seg_d & ~error);
    assign HEX3[4] = ~(seg_e & ~error);
    assign HEX3[5] = ~(seg_f & ~error);
    assign HEX3[6] = ~(seg_g & ~error);

	 assign HEX5[0] = ~error;   
    assign HEX5[1] = 1'b1;     
    assign HEX5[2] = 1'b1;     
    assign HEX5[3] = ~error;   
    assign HEX5[4] = ~error;   
    assign HEX5[5] = ~error;   
    assign HEX5[6] = ~error;   

endmodule