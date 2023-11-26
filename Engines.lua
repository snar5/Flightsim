--*******************************************************************
--**                 Engine Start Overhead
--*******************************************************************

-- Engines --


DataRef("cont_engine", "crj_series/engine/cont_ignition_animation","writeable")
DataRef("l_start_animation", "crj_series/engine/l_start_animation","writeable")
DataRef("r_start_animation", "crj_series/engine/r_start_animation","writeable")
DataRef("l_stop_animation", "crj_series/engine/l_stop_animation","writeable")
DataRef("r_stop_animation", "crj_series/engine/r_stop_animation","writeable")
DataRef("pwr_fuel_animation", "crj_series/apu/pwr_fuel_animation","writeable")
DataRef("apu_start_stop_animation", "crj_series/apu/start_stop_animation","writeable")

DataRef("l_boost_pump_on_lit", "crj_series/fuel/l_boost_pump_on_lit","writeable")
DataRef("l_boost_pump_inop_on", "crj_series/fuel/l_boost_pump_inop_lit","writeable")
DataRef("l_boost_pump_animation", "crj_series/fuel/l_boost_pump_animation","writeable")

DataRef("r_boost_pump_on_lit", "crj_series/fuel/r_boost_pump_on_lit","writeable")
DataRef("r_boost_pump_inop_on", "crj_series/fuel/r_boost_pump_inop_lit","writeable")
DataRef("r_boost_pump_animation", "crj_series/fuel/r_boost_pump_animation","writeable")

function r_boost_pump_on() 
	command_begin("crj_series/fuel/r_boost_pump")
	command_end("crj_series/fuel/r_boost_pump")
	-- Not sure if animation is needed here or not
	if r_boost_pump_animation == 0 then 
		r_boost_pump_animation = 1
	elseif r_boost_pump_animation == 1 then 
		r_boost_pump_animation = 0 
	end 
    r_boost_pump_on_lit = 1 
	r_boost_pump_inop_on = 0 
end 

function r_boost_pump_off() 
	command_begin("crj_series/fuel/r_boost_pump")
	command_end("crj_series/fuel/r_boost_pump")
	-- Not sure if animation is needed here or not
	if r_boost_pump_animation == 1 then 
		r_boost_pump_animation = 0
	elseif r_boost_pump_animation == 0 then 
		r_boost_pump_animation = 1 
	end 
    r_boost_pump_on_lit = 0
	r_boost_pump_inop_on = 1
end 




function l_boost_pump_on() 
	command_begin("crj_series/fuel/l_boost_pump")
	command_end("crj_series/fuel/l_boost_pump")
	-- Not sure if animation is needed here or not
	if l_boost_pump_animation == 0 then 
		l_boost_pump_animation = 1
	elseif l_boost_pump_animation == 1 then 
		l_boost_pump_animation = 0 
	end 
    l_boost_pump_on_lit = 1 
	l_boost_pump_inop_on = 0 
end 

function l_boost_pump_off() 
	command_begin("crj_series/fuel/l_boost_pump")
	command_end("crj_series/fuel/l_boost_pump")
	-- Not sure if animation is needed here or not
	if l_boost_pump_animation == 1 then 
		l_boost_pump_animation = 0
	elseif l_boost_pump_animation == 0 then 
		l_boost_pump_animation = 1 
	end 
    l_boost_pump_on_lit = 0
	l_boost_pump_inop_on = 1
end 

function engine_cont_ignition_on() 
	command_begin("crj_series/engine/cont_ignition")
	command_end("crj_series/engine/cont_ignition")
	-- Not sure if animation is needed here or not
    cont_engine = 1 
end
function engine_cont_ignition_off() 
	command_begin("crj_series/engine/cont_ignition")
	command_end("crj_series/engine/cont_ignition")
	-- Not sure if animation is needed here or not
    cont_engine = 0
end

function engine_left_start_on() 
	command_begin("crj_series/engine/l_start")
	command_end("crj_series/engine/l_start")
	-- Not sure if animation is needed here or not
    l_start_animation = 1 
end
function engine_left_start_off() 
	command_begin("crj_series/engine/l_start")
	command_end("crj_series/engine/l_start")
	-- Not sure if animation is needed here or not
	l_start_animation = 0
end

function engine_left_stop_on() 
	command_begin("crj_series/engine/l_stop")
	command_end("crj_series/engine/l_stop")
	-- Not sure if animation is needed here or not
    l_stop_animation = 1 
end
function engine_left_stop_off() 
	command_begin("crj_series/engine/l_stop")
	command_end("crj_series/engine/l_stop")
	-- Not sure if animation is needed here or not
	l_stop_animation = 0
end

function engine_right_start_on() 
	command_begin("crj_series/engine/r_start")
	command_end("crj_series/engine/r_start")
	-- Not sure if animation is needed here or not
    r_start_animation = 1 
end
function engine_right_start_off() 
	command_begin("crj_series/engine/r_start")
	command_end("crj_series/engine/r_start")
	-- Not sure if animation is needed here or not
	r_start_animation = 0
end

function engine_right_stop_on() 
	command_begin("crj_series/engine/r_stop")
	command_end("crj_series/engine/r_stop")
	-- Not sure if animation is needed here or not
    r_stop_animation = 1 
end
function engine_right_stop_off() 
	command_begin("crj_series/engine/r_stop")
	command_end("crj_series/engine/r_stop")
	-- Not sure if animation is needed here or not
	r_stop_animation = 0
end

function apu_fuel_on() 
	command_begin("crj_series/apu/pwr_fuel")
	command_end("crj_series/apu/pwr_fuel")
	-- Not sure if animation is needed here or not
    pwr_fuel_animation = 1 
end
function apu_fuel_off() 
	command_begin("crj_series/apu/pwr_fuel")
	command_end("crj_series/apu/pwr_fuel")
	-- Not sure if animation is needed here or not
	pwr_fuel_animation = 0
end

function apu_start_stop_on() 
	command_begin("crj_series/apu/start_stop")
	command_end("crj_series/apu/start_stop")
	-- Not sure if animation is needed here or not
    apu_start_stop_animation = 1 
end
function apu_start_stop_off() 
	command_begin("crj_series/apu/start_stop")
	command_end("crj_series/apu/start_stop")
	-- Not sure if animation is needed here or not
	apu_start_stop_animation = 0
end

create_command("FlyWithLua/cont_ignition","Engine - Cont Ignition", "engine_cont_ignition_on()","","engine_cont_ignition_off()")
create_command("FlyWithLua/l_start_engine","Engine - Left Start", "engine_left_start_on()","","engine_left_start_off()")
create_command("FlyWithLua/r_start_engine","Engine - Right Start", "engine_right_start_on()","","engine_right_start_off()")
create_command("FlyWithLua/l_stop_engine","Engine - Left Stop", "engine_left_stop_on()","","engine_left_stop_off()")
create_command("FlyWithLua/r_stop_engine","Engine - Right Stop", "engine_right_stop_on()","","engine_right_stop_off()")
create_command("FlyWithLua/pwr_fuel","APU - Power Fuel", "apu_fuel_on()","","apu_fuel_off()")
create_command("FlyWithLua/apu_start_stop","APU - Start/Stop", "apu_start_stop_on()","","apu_start_stop_off()")
create_command("FlyWithLua/l_boost_pump","Fuel - Left Fuel Pump", "l_boost_pump_on()","","l_boost_pump_off()")
create_command("FlyWithLua/r_boost_pump","Fuel - Right Fuel Pump", "r_boost_pump_on()","","r_boost_pump_off()")

set_button_assignment(342,"FlyWithLua/cont_ignition")
set_button_assignment(338,"FlyWithLua/l_start_engine")
set_button_assignment(340,"FlyWithLua/r_start_engine")
set_button_assignment(339,"FlyWithLua/l_stop_engine")
set_button_assignment(341,"FlyWithLua/r_stop_engine")
set_button_assignment(496,"FlyWithLua/pwr_fuel")
set_button_assignment(495,"FlyWithLua/apu_start_stop")
set_button_assignment(502,"FlyWithLua/l_boost_pump")
set_button_assignment(500,"FlyWithLua/r_boost_pump")