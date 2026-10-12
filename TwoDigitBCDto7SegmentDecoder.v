module TwoDigitBCDto7SegmentDecoder (sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8, a1, b1, c1, d1, e1, f1, g1, a2, b2, c2, d2, e2, f2, g2);

    input  sw1, sw2, sw3, sw4, sw5, sw6, sw7, sw8;
    output a1, b1, c1, d1, e1, f1, g1, a2, b2, c2, d2, e2, f2, g2;

    // Digit 1
    assign a1 = sw1|sw3|(sw2&sw4)|(~sw2&~sw4);
    assign b1 = ~sw2|(~sw3&~sw4)|(sw3&sw4);
    assign c1 = sw2|~sw3|sw4;
    assign d1 = sw1|(~sw2&~sw4)|(~sw2&sw3)|(sw3&~sw4)|(sw2&~sw3&sw4);
    assign e1 = (~sw2&~sw4)|(sw3&~sw4);
    assign f1 = sw1|(~sw3&~sw4)|(sw2&~sw3)|(sw2&~sw4);
    assign g1 = sw1|(sw2&~sw3)|(~sw2&sw3)|(sw3&~sw4);

    // Digit 2
    assign a2 = sw5|sw7|(sw6&sw8)|(~sw6&~sw8);
    assign b2 = ~sw6|(~sw7&~sw8)|(sw7&sw8);
    assign c2 = sw6|~sw7|sw8;
    assign d2 = sw5|(~sw6&~sw8)|(~sw6&sw7)|(sw7&~sw8)|(sw6&~sw7&sw8);
    assign e2 = (~sw6&~sw8)|(sw7&~sw8);
    assign f2 = sw5|(~sw7&~sw8)|(sw6&~sw7)|(sw6&~sw8);
    assign g2 = sw5|(sw6&~sw7)|(~sw6&sw7)|(sw7&~sw8);

endmodule