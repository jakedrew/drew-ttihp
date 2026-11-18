open Hardcaml
open Signal

let circuit =
  let clk    = input "clk" 1 in
  let rst_n  = input "rst_n" 1 in
  let ena    = input "ena" 1 in
  let ui_in  = input "ui_in" 8 in
  let uio_in = input "uio_in" 8 in

  let spec = Reg_spec.create ~clock:clk ~clear:(~:rst_n) () in

  Circuit.create_exn ~name:"tt_um_jakedrew_drew"
    [ output "uo_out"  (reg spec ~enable:ena (ui_in +: uio_in))
    ; output "uio_out" (zero 8)
    ; output "uio_oe"  (zero 8)
    ]

let () = Rtl.print Verilog circuit
