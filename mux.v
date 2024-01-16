module mux (i1,i2,i3,i4 , s , y);
    input i1,i2, i3, i4;
    input [1:0] s;
    output y;

    not(ns0 , s[0]);
    not(ns1 , s[1]);

    and(w0, i1, ns1, ns0);
    and(w1, i2, ns1, s[0]);
    and(w2, i3, s[1], ns0);
    and(w3, i4, s[1], s[0]);

    or(y,w0,w1,w2,w3);
endmodule