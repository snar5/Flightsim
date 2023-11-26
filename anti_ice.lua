DataRef("lh_probe","crj_series/anti_ice/probes_lh_animation", "writeable") 
DataRef("rh_probe","crj_series/anti_ice/probes_rh_animation", "writeable") 
DataRef("wshld_lh","crj_series/anti_ice/wshld_lh_switch_animation", "writeable") 
DataRef("wshld_rh","crj_series/anti_ice/wshld_rh_switch_animation", "writeable") 


--Windshield Heat Left

function wshld_lh_off()
	command_begin("crj_series/anti_ice/wshld_lh_switch_up")
	command_end("crj_series/anti_ice/wshld_lh_switch_up")
	wshld_lh = 0
   return
end 

function wshld_lh_low()
	command_begin("crj_series/anti_ice/wshld_lh_switch_down")
	command_end("crj_series/anti_ice/wshld_lh_switch_down")
	wshld_lh = 1
   return	
end 

function wshld_lh_hi ()
	command_begin("crj_series/anti_ice/wshld_lh_switch_down")
	command_end("crj_series/anti_ice/wshld_lh_switch_down")
	wshld_lh = 2
   return
end 

function wshld_lh_hi_low ()
	command_begin("crj_series/anti_ice/wshld_lh_switch_up")
	command_end("crj_series/anti_ice/wshld_lh_switch_up")
	wshld_lh = 1
   return
end
-- Windshield Heat Right 
function wshld_rh_off()
	command_begin("crj_series/anti_ice/wshld_rh_switch_up")
	command_end("crj_series/anti_ice/wshld_rh_switch_up")
	wshld_rh = 0
   return
end
function wshld_rh_low()
	command_begin("crj_series/anti_ice/wshld_rh_switch_down")
	command_end("crj_series/anti_ice/wshld_rh_switch_down")
	wshld_rh = 1
   return	
end

function wshld_rh_hi ()
	command_begin("crj_series/anti_ice/wshld_rh_switch_down")
	command_end("crj_series/anti_ice/wshld_rh_switch_down")
	wshld_rh = 2
   return
end

function wshld_rh_hi_low ()
	command_begin("crj_series/anti_ice/wshld_rh_switch_up")
	command_end("crj_series/anti_ice/wshld_rh_switch_up")
	wshld_rh = 1
   return
end

-- Heat Probes 

function l_probe_on()
	command_begin("crj_series/anti_ice/probes_lh_down")
	command_end("crj_series/anti_ice/probes_lh_down")
	lh_probe = 1
   return
end 

function l_probe_off()
	command_begin("crj_series/anti_ice/probes_lh_up")
	command_end("crj_series/anti_ice/probes_lh_up")
	lh_probe = 0
   return	
end 

function r_probe_on ()
	command_begin("crj_series/anti_ice/probes_rh_down")
	command_end("crj_series/anti_ice/probes_rh_down")
	rh_probe = 1
   return
end 

function r_probe_off()
	command_begin("crj_series/anti_ice/probes_rh_up")
	command_end("crj_series/anti_ice/probes_rh_up")
	rh_probe = 0
    return	
end 

create_command("FlyWithLua/lh_probe","Left Ice Probe ","l_probe_off()","","l_probe_on()")
create_command("FlyWithLua/rh_probe","Right Ice Probe ","r_probe_off()","","r_probe_on()")

create_command("FlyWithLua/lh_wshld_off","Left Windshield Heat/On","wshld_lh_off()","","wshld_lh_low()")
create_command("FlyWithLua/lh_wshld_hi","Left Windshield Heat/Auto","wshld_lh_hi()","","wshld_lh_hi_low()")

create_command("FlyWithLua/rh_wshld_off","Right Windshield Heat/On","wshld_rh_off()","","wshld_rh_low()")
create_command("FlyWithLua/rh_wshld_hi","Right Windshield Heat/Auto","wshld_rh_hi()","","wshld_rh_hi_low()")

-- Button Assignment -- 

set_button_assignment(177,"FlyWithLua/lh_probe")
set_button_assignment(178,"FlyWithLua/rh_probe")
set_button_assignment(174,"FlyWithLua/lh_wshld_off")
set_button_assignment(173,"FlyWithLua/lh_wshld_hi")
set_button_assignment(175,"FlyWithLua/rh_wshld_off")
set_button_assignment(176,"FlyWithLua/rh_wshld_hi")