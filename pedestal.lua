-- Pedestal Functions 



DataRef("anti_skid","crj_series/landgearpanel/anti_skid_sw_animation","writeable")
DataRef("n1_sync","crj_series/enginepanel/engine_synch_sw_animation","writeable")

-- Flaps 
-- Flaps were assigned through the menu
--

-- Nosewheel -- 
function nosewheel_off() 
	command_begin("crj_series/mainleft/nosewheel_steering")
	command_end("crj_series/mainleft/nosewheel_steering")

end
function nosewheel_armed()
	command_begin("crj_series/mainleft/nosewheel_steering")
	command_end("crj_series/mainleft/nosewheel_steering")
end

-- Antiskid 
function antiskid_off() 
	command_begin("crj_series/landgearpanel/anti_skid_sw_down")
	command_end("crj_series/landgearpanel/anti_skid_sw_down")
	-- Not sure if animation is needed here or not 
        anti_skid = 0  
end
function antiskid_on()
	command_begin("crj_series/landgearpanel/anti_skid_sw_up")
	command_end("crj_series/landgearpanel/anti_skid_sw_up")
	-- Not sure if animation is needed here or not
            anti_skid = 1 
     
end

function sync_n1()
	command_begin("crj_series/enginepanel/engine_synch_sw_down")
	command_end("crj_series/enginepanel/engine_synch_sw_down")
	n1_sync = 0 
end

function sync_off()
	command_begin("crj_series/enginepanel/engine_synch_sw_up")
	command_end("crj_series/enginepanel/engine_synch_sw_up")
	-- 1 is off 
    n1_sync = 1 
     
end


create_command("FlyWithLua/antiskid","Anti-Skid Switch", "antiskid_off()","","antiskid_on()")
create_command("FlyWithLua/engine_sync","Engine Sync", "sync_n1()","","sync_off()")
create_command("FlyWithLua/nosewheel","Nose Wheel Arm", "nosewheel_off()","","nosewheel_armed()")

set_button_assignment(1167,"FlyWithLua/antiskid")
set_button_assignment(1159,"FlyWithLua/engine_sync")
set_button_assignment(960,"FlyWithLua/nosewheel")