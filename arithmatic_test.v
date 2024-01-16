`timescale 1ns/1ns
`include "arithmatic.v"

module arithmatic_test;
    reg [3:0] x;
    reg [3:0] y;
    reg cin , a, b;
    reg [1:0] s;

    wire [3:0] d;
    wire cout;

    arithmatic A(x, y, cin , s, a, b, d , cout);

    initial begin

        $dumpfile("arithmatic_test.vcd");
        $dumpvars(0,arithmatic_test);

        x=4'b1001;
        y=4'b0011;
        s=2'b00;
        cin=0;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b00;
        cin=1;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b01;
        cin=0;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b01;
        cin=1;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b10;
        cin=0;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b10;
        cin=1;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b11;
        cin=0;
        a=1'b0;
        b=1'b1;
        #10;

        x=4'b1001;
        y=4'b0011;
        s=2'b11;
        cin=1;
        a=1'b0;
        b=1'b1;
        #10;
    end

endmodule;