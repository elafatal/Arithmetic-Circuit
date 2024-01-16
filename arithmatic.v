`include "fulladder.v"
`include "mux.v"

module arithmatic(x, y , cin , s, a, b, d , cout);
    input [3:0] x;
    input [3:0] y;
    input cin , a, b;
    input [1:0] s;
    
    output [3:0] d;
    output cout;

    mux mux1(y[0], ~y[0], a, b, s , w1);
    fulladder fa1(x[0], w1, cin, c1, d[0]);

    mux mux2(y[1], ~y[1], a, b, s , w2);
    fulladder fa2(x[1], w2, c1, c2, d[1]);

    mux mux3(y[2], ~y[2], a, b, s , w3);
    fulladder fa3(x[2], w3, c2, c3, d[2]);

    mux mux4(y[3], ~y[3], a, b, s , w4);
    fulladder fa4(x[3], w4, c3, cout, d[3]);
endmodule