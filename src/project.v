module tt_um_jakedrew_drew (
    uio_in,
    ui_in,
    uo_out,
    uio_out,
    uio_oe
);

    input [7:0] uio_in;
    input [7:0] ui_in;
    output [7:0] uo_out;
    output [7:0] uio_out;
    output [7:0] uio_oe;

    wire [7:0] _6;
    wire [7:0] _8;
    assign _6 = 8'b00000000;
    assign _8 = ui_in + uio_in;
    assign uo_out = _8;
    assign uio_out = _6;
    assign uio_oe = _6;

endmodule
