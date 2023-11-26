--*******************************************************************
--**                 External Lighting
--*******************************************************************

-- External lights -- 

DataRef("ext_lts_nav", "crj_series/EXT_LTS/nav_anim","writeable")
DataRef("ext_lts_beacon", "crj_series/EXT_LTS/beacon_anim","writeable")
DataRef("ext_lts_strobe", "crj_series/EXT_LTS/strobe_anim","writeable")
DataRef("ext_lts_wing", "crj_series/EXT_LTS/wing_anim","writeable")

function ext_lts_nav_on()
	command_begin("crj_series/EXT_LTS/nav_down")
	command_end("crj_series/EXT_LTS/nav_down")
	-- Not sure if animation is needed here or not
    ext_lts_nav = 1 
end
function ext_lts_nav_off()
	command_begin("crj_series/EXT_LTS/nav_up")
	command_end("crj_series/EXT_LTS/nav_up")
	-- Not sure if animation is needed here or not
    ext_lts_nav = 0
end

--  Beacon 

function ext_lts_beacon_on()
	command_begin("crj_series/EXT_LTS/beacon_down")
	command_end("crj_series/EXT_LTS/beacon_down")
	-- Not sure if animation is needed here or not
    ext_lts_beacon = 1 
end
function ext_lts_beacon_off()
	command_begin("crj_series/EXT_LTS/beacon_up")
	command_end("crj_series/EXT_LTS/beacon_up")
	-- Not sure if animation is needed here or not
    ext_lts_beacon = 0
end

-- Strobe 
function ext_lts_strobe_on()
	command_begin("crj_series/EXT_LTS/strobe_down")
	command_end("crj_series/EXT_LTS/strobe_down")
	-- Not sure if animation is needed here or not
    ext_lts_strobe = 1 
end
function ext_lts_strobe_off()
	command_begin("crj_series/EXT_LTS/strobe_up")
	command_end("crj_series/EXT_LTS/strobe_up")
	-- Not sure if animation is needed here or not
    ext_lts_strobe = 0
end

-- Wing INSP

function ext_lts_wing_on()
	command_begin("crj_series/EXT_LTS/wing_down")
	command_end("crj_series/EXT_LTS/wing_down")
	-- Not sure if animation is needed here or not
    ext_lts_wing = 1 
end
function ext_lts_wing_off()
	command_begin("crj_series/EXT_LTS/wing_up")
	command_end("crj_series/EXT_LTS/wing_up")
	-- Not sure if animation is needed here or not
    ext_lts_wing = 0
end

create_command("FlyWithLua/external_lts_nav","External Lighting Nav", "ext_lts_nav_on()","","ext_lts_nav_off()")
create_command("FlyWithLua/external_lts_beacon","External Lighting Beacon", "ext_lts_beacon_on()","","ext_lts_beacon_off()")
create_command("FlyWithLua/external_lts_strobe","External Lighting Strobe", "ext_lts_strobe_on()","","ext_lts_strobe_off()")
create_command("FlyWithLua/external_lts_wing","External Lighting Winglet", "ext_lts_wing_on()","","ext_lts_wing_off()")

set_button_assignment(322,"FlyWithLua/external_lts_nav")
set_button_assignment(320,"FlyWithLua/external_lts_beacon")
set_button_assignment(323,"FlyWithLua/external_lts_strobe")
set_button_assignment(321,"FlyWithLua/external_lts_wing")