transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/Elevator.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/Verific.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/Datapath.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/TopLevel.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/Botao.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/BotaoArray.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/PositionCounter.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/Teste.vhd}
vcom -93 -work work {C:/Users/Celular/Desktop/Elevator/Decod.vhd}

