module tt_um_jakedrew_drew (
    ena,
    rst_n,
    clk,
    uio_in,
    ui_in,
    uo_out,
    uio_out,
    uio_oe
);

    input ena;
    input rst_n;
    input clk;
    input [7:0] uio_in;
    input [7:0] ui_in;
    output [7:0] uo_out;
    output [7:0] uio_out;
    output [7:0] uio_oe;

    wire [7:0] _9;
    wire _13;
    wire [7:0] _11;
    reg [7:0] _15;
    assign _9 = 8'b00000000;
    assign _13 = ~ rst_n;
    assign _11 = ui_in + uio_in;
    always @(posedge clk) begin
        if (_13)
            _15 <= _9;
        else
            if (ena)
                _15 <= _11;
    end
    assign uo_out = _15;
    assign uio_out = _9;
    assign uio_oe = _9;

endmodule
