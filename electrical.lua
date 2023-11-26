--**********************************************************************--
--** 				  Electrical Panel Overhead                       **--
--**
--**********************************************************************--


DataRef("dc_power_switch", "crj_series/electrical/dc_service_animation","writeable")
DataRef("battery_master_switch","crj_series/electrical/batt_master_animation","writeable")
DataRef("electric_ac_button","crj_series/electrical/ac_power_animation","writeable")
DataRef("elt_switch","crj_series/emergency/elt_animation", "writeable") 


function elt_on ()
	command_begin("crj_series/emergency/elt_down")
	command_end("crj_series/emergency/elt_down")
	elt_switch = 1
return
end 

function elt__off()
	command_begin("crj_series/emergency/elt_up")
	command_end("crj_series/emergency/elt_up")
	elt_switch = 1
return	
end 


function dc_power_on ()
		command_begin("crj_series/electrical/dc_service_up")
		command_end("crj_series/electrical/dc_service_up")
		dc_power_switch = 1
	return
end 

function dc_power_off()
		command_begin("crj_series/electrical/dc_service_down")
		command_end("crj_series/electrical/dc_service_down")
		dc_power_switch = 0
	return	
end 

-- Master Battery -- 
 
function master_battery_on ()
		command_begin("crj_series/electrical/batt_master_down")
		command_end("crj_series/electrical/batt_master_down")
		battery_master_switch = 1
	return
end 

function master_battery_off ()
		command_begin("crj_series/electrical/batt_master_up")
		command_end("crj_series/electrical/batt_master_up")
		battery_master_switch = 0
	return	
end 


-- Electric AC Button 

function electric_ac_on ()
		command_begin("crj_series/electrical/ac_power")
		command_end("crj_series/electrical/ac_power")
		electric_ac_button = 1
	return
end 

function electric_ac_off ()
	command_begin("crj_series/electrical/ac_power")
	command_end("crj_series/electrical/ac_power")
	electric_ac_button = 0
	return
end 

-- ****   AC ESS XFER ********

DataRef("ac_ess_button","crj_series/electrical_panel/ac_ess_xfer_lit","writeable")

function electric_xfer_on ()
	command_begin("crj_series/electrical/ac_ess_xfer")
	command_end("crj_series/electrical/ac_ess_xfer")
	ac_ess_button = 1
	return
end 

function electric_xfer_off ()
	command_begin("crj_series/electrical/ac_ess_xfer")
	command_end("crj_series/electrical/ac_ess_xfer")
	ac_ess_button = 0
	return
end 

-- ******* Generators 1 & 2 *********************

DataRef("ac_gen1_button","crj_series/electrical/gen_1_animation","writeable")

function electric_gen1_up ()
	command_begin("crj_series/electrical/gen_1_up")
	command_end("crj_series/electrical/gen_1_up")
	ac_gen1_button = 1
	return
end 

function electric_gen1_down ()
	command_begin("crj_series/electrical/gen_1_down")
	command_end("crj_series/electrical/gen_1_down")
	ac_gen1_button = 0
	return
end 

DataRef("ac_gen2_button","crj_series/electrical/gen_2_animation","writeable")

function electric_gen2_up ()
	command_begin("crj_series/electrical/gen_2_up")
	command_end("crj_series/electrical/gen_2_up")
	ac_gen2_button = 1
	return
end 

function electric_gen2_down ()
	command_begin("crj_series/electrical/gen_2_down")
	command_end("crj_series/electrical/gen_2_down")
	ac_gen2_button = 0
	return
end 

-- APU Gen -- 
DataRef("ac_gen_button","crj_series/electrical/apu_gen_animation","writeable")

function electric_apu_up ()
	command_begin("crj_series/electrical/apu_gen_up")
	command_end("crj_series/electrical/apu_gen_up")
	ac_gen_button = 1
	return
end 

function electric_apu_down ()
	command_begin("crj_series/electrical/apu_gen_down")
	command_end("crj_series/electrical/apu_gen_down")
	ac_gen_button = 0
	return
end 

DataRef("auto_xfer_1","crj_series/electrical/auto_xfer_1_animation","writeable")
DataRef("auto_xfer_1_off_lit","crj_series/electrical/auto_xfer_1_off_lit","writeable")

function auto_xfr1_on ()
	command_begin("crj_series/electrical/auto_xfer_1")
	command_end("crj_series/electrical/auto_xfer_1")
	auto_xfer_1 = 1
	auto_xfer_1_off_lit = 1 
	return
end 

function auto_xfr1_off ()
	command_begin("crj_series/electrical/auto_xfer_1")
	command_end("crj_series/electrical/auto_xfer_1")
	auto_xfer_1 = 0
	auto_xfer_1_off_lit = 0
	return
end 

DataRef("auto_xfer_2","crj_series/electrical/auto_xfer_2_animation","writeable")
DataRef("auto_xfer_2_off_lit","crj_series/electrical/auto_xfer_2_off_lit","writeable")

function auto_xfr2_on ()
	command_begin("crj_series/electrical/auto_xfer_2")
	command_end("crj_series/electrical/auto_xfer_2")
	auto_xfer_2 = 1
	auto_xfer_2_off_lit = 1 
	return
end 

function auto_xfr2_off ()
	command_begin("crj_series/electrical/auto_xfer_2")
	command_end("crj_series/electrical/auto_xfer_2")
	auto_xfer_2 = 0
	auto_xfer_2_off_lit = 0
	return
end 

-- Command Assignment -- 

create_command("FlyWithLua/dc_power", "DC Power Toggle","dc_power_on()", "", "dc_power_off()")
create_command("FlyWithLua/battery_master_power", "Master Battery Toggle","master_battery_on()", "", "master_battery_off()")
create_command("FlyWithLua/electric_ac_toggle", "Electric AC Button","electric_ac_on()", "", "electric_ac_off()")
create_command("FlyWithLua/ac_left_pack", "Air Condition Left Pack ","ac_left_pack()", "", "ac_left_pack()")
create_command("FlyWithLua/ac_right_pack", "Air Condition Righ Pack","ac_right_pack()", "", "ac_right_pack()")
create_command("FlyWithLua/electric_xfer","AC ESS XFER Button", "electric_xfer_on()","","electric_xfer_off()")
create_command("FlyWithLua/electric_apu","Electric APU", "electric_apu_up()","","electric_apu_down()")
create_command("FlyWithLua/auto_xfr1","Auto xfer button","auto_xfr1_on()","","auto_xfr1_off()")
create_command("FlyWithLua/auto_xfr2","Auto xfer 2 button","auto_xfr2_on()","","auto_xfr2_off()")
create_command("FlyWithLua/elt","Elt Switch","elt_on()","","elt_off()")

-- Button Assignment -- 

set_button_assignment(494,"FlyWithLua/dc_power")
set_button_assignment(493,"FlyWithLua/battery_master_power")
set_button_assignment(510,"FlyWithLua/electric_ac_toggle")
set_button_assignment(509,"FlyWithLua/electric_xfer")
set_button_assignment(491,"FlyWithLua/electric_gen1")
set_button_assignment(504,"FlyWithLua/electric_gen2")
set_button_assignment(492,"FlyWithLua/electric_apu")
set_button_assignment(505,"FlyWithLua/auto_xfr1")
set_button_assignment(507,"FlyWithLua/auto_xfr2")
-- need elt button here