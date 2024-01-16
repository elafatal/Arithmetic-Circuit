module fulladder (a, b, cin, cout, sum);
    input a , b , cin;
    output cout, sum;

    xor(w0, a , b);
    xor(sum, w0, cin);

    and(w1, a, b);
    and(w2, w0, cin);
    or(cout, w1 ,w2); 
endmodule