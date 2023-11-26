-- Air Conditioning -- 


DataRef("recirc_fan", "crj_series/air_cond/recirc_fan_animation","writeable")

function recirc_fan_on() 
	command_begin("crj_series/air_cond/recirc_fan_down")
	command_end("crj_series/air_cond/recirc_fan_down")
	recirc_fan = 0 
end

function recirc_fan_off() 
	command_begin("crj_series/air_cond/recirc_fan_off")
	command_end("crj_series/air_cond/recirc_fan_off")
	recirc_fan = 1
end


function ac_left_pack()
	command_begin("crj_series/air_cond/l_pack")
	command_end("crj_series/air_cond/l_pack")
	-- Not sure if animation is needed here or not
end

function ac_right_pack()
	command_begin("crj_series/air_cond/r_pack")
	command_end("crj_series/air_cond/r_pack")
end

create_command("FlyWithLua/electric_gen1","Electric Generator 1", "electric_gen1_up()","","electric_gen1_down()")
create_command("FlyWithLua/electric_gen2","Electric Generator 2", "electric_gen2_up()","","electric_gen2_down()")
create_command("FlyWithLua/recirc_fan","AC Reciprical Fan", "recirc_fan_on()","","recirc_fan_off()")

set_button_assignment(184,"FlyWithLua/recirc_fan")
set_button_assignment(335,"FlyWithLua/ac_left_pack")
set_button_assignment(337,"FlyWithLua/ac_right_pack")

