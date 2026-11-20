/*
 * Sumador de 8 bits
 * Entrada A: ui_in
 * Entrada B: uio_in
 * Salida:    uo_out
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_8bitadder (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // Suma los dos números de 8 bits.
    assign uo_out = ui_in + uio_in;

    // Los pines bidireccionales no se utilizan como salidas.
    assign uio_out = 8'b00000000;
    assign uio_oe  = 8'b00000000;

    // Estas señales no se necesitan en este diseño combinacional.
    wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule

`default_nettype wire
