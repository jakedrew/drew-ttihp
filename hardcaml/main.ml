open Hardcaml
open Signal

let circuit =
  let ui_in  = input "ui_in" 8 in
  let uio_in = input "uio_in" 8 in

  Circuit.create_exn ~name:"tt_um_jakedrew_drew"
    [ output "uo_out"  (ui_in +: uio_in)
    ; output "uio_out" (zero 8)
    ; output "uio_oe"  (zero 8)
    ]

let () = Rtl.print Verilog circuit
