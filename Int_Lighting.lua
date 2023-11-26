--*******************************************************************
--**                 Landing Lights
--*******************************************************************

-- External lights -- 

DataRef("lts_left", "crj_series/LDG_LTS/left_anim","writeable")
DataRef("lts_nose", "crj_series/LDG_LTS/nose_anim","writeable")
DataRef("lts_right", "crj_series/LDG_LTS/right_anim","writeable")
DataRef("lts_recog_taxi", "crj_series/LDG_LTS/taxi_anim","writeable")
DataRef("pass_sign_nosmoking", "crj_series/pass_sign/no_smkg","writeable")
DataRef("pass_sign_seatbelts", "crj_series/pass_sign/seat_belts","writeable")

function lts_left_on() 
	command_begin("crj_series/LDG_LTS/left_down")
	command_end("crj_series/LDG_LTS/left_down")
	-- Not sure if animation is needed here or not
    lts_left = 1 
end
function lts_left_off()
	command_begin("crj_series/LDG_LTS/left_up")
	command_end("crj_series/LDG_LTS/left_up")
	-- Not sure if animation is needed here or not
    lts_left = 0
end

function lts_nose_on() 
	command_begin("crj_series/LDG_LTS/nose_down")
	command_end("crj_series/LDG_LTS/nose_down")
	-- Not sure if animation is needed here or not
    lts_nose = 1 
end
function lts_nose_off()
	command_begin("crj_series/LDG_LTS/nose_up")
	command_end("crj_series/LDG_LTS/nose_up")
	-- Not sure if animation is needed here or not
    lts_nose = 0
end

function lts_right_on() 
	command_begin("crj_series/LDG_LTS/right_down")
	command_end("crj_series/LDG_LTS/right_down")
	-- Not sure if animation is needed here or not
    lts_right = 1 
end
function lts_right_off()
	command_begin("crj_series/LDG_LTS/right_up")
	command_end("crj_series/LDG_LTS/right_up")
	-- Not sure if animation is needed here or not
    lts_right = 0
end

function lts_taxi_on() 
	command_begin("crj_series/LDG_LTS/taxi_down")
	command_end("crj_series/LDG_LTS/taxi_down")
	-- Not sure if animation is needed here or not
    lts_recog_taxi = 1 
end
function lts_taxi_off()
	command_begin("crj_series/LDG_LTS/taxi_up")
	command_end("crj_series/LDG_LTS/taxi_up")
	-- Not sure if animation is needed here or not
    lts_recog_taxi = 0
end

-- Smoking Sign 

function pass_nosmkg_auto() 
	command_begin("crj_series/pass_sign/no_smkg_down")
	command_end("crj_series/pass_sign/no_smkg_down")
	-- Not sure if animation is needed here or not
    pass_sign_nosmoking = 2 
end
function pass_nosmkg_auto_off()
	command_begin("crj_series/pass_sign/no_smkg_up")
	command_end("crj_series/pass_sign/no_smkg_up")
	-- Not sure if animation is needed here or not
	pass_sign_nosmoking = 0
end
function pass_nosmkg_on()
	command_begin("crj_series/pass_sign/no_smkg_up")
	command_end("crj_series/pass_sign/no_smkg_up")
	-- Not sure if animation is needed here or not
	pass_sign_nosmoking = 1
end
function pass_nosmkg_on_off()
	command_begin("crj_series/pass_sign/no_smkg_down")
	command_end("crj_series/pass_sign/no_smkg_down")
	-- Not sure if animation is needed here or not
	pass_sign_nosmoking = 0
end



function pass_seatbelt_auto_on() 
	command_begin("crj_series/pass_sign/seat_belt_down")
	command_end("crj_series/pass_sign/seat_belt_down")
	-- Not sure if animation is needed here or not
    pass_sign_seatbelts = 2 
end
function pass_seatbelt_auto_off()
	command_begin("crj_series/pass_sign/seat_belt_up")
	command_end("crj_series/pass_sign/seat_belt_up")
	-- Not sure if animation is needed here or not
	pass_sign_seatbelts = 0
end

function pass_seatbelt_on()
	command_begin("crj_series/pass_sign/seat_belt_up")
	command_end("crj_series/pass_sign/seat_belt_up")
	-- Not sure if animation is needed here or not
	pass_sign_seatbelts = 1
end

function pass_seatbelt_on_off()
	command_begin("crj_series/pass_sign/seat_belt_down")
	command_end("crj_series/pass_sign/seat_belt_down")
	-- Not sure if animation is needed here or not
	pass_sign_seatbelts = 0
end


create_command("FlyWithLua/landing_lts_left","Landing Light Left", "lts_left_on()","","lts_left_off()")
create_command("FlyWithLua/landing_lts_nose","Landing Light Nose", "lts_nose_on()","","lts_nose_off()")
create_command("FlyWithLua/landing_lts_right","Landing Light Right", "lts_right_on()","","lts_right_off()")
create_command("FlyWithLua/landing_lts_taxi","Landing Light Taxi", "lts_taxi_on()","","lts_taxi_off()")
create_command("FlyWithLua/No_Smkg_On","Passenger No Smoking Light", "pass_nosmkg_on()","","pass_nosmkg_on_off()")
create_command("FlyWithLua/No_Smkg_Auto","Passenger No Smoking Auto Light", "pass_nosmkg_auto()","","pass_nosmkg_auto_off()")
create_command("FlyWithLua/Seat_Belt_On","Passenger Seat Belt On Light", "pass_seatbelt_on()","","pass_seatbelt_on_off()")
create_command("FlyWithLua/Seat Belt Auto","Passenger Seat Belt Auto Light", "pass_seatbelt_auto_on()","","pass_seatbelt_auto_off()")

set_button_assignment(328,"FlyWithLua/landing_lts_left")
set_button_assignment(327,"FlyWithLua/landing_lts_nose")
set_button_assignment(326,"FlyWithLua/landing_lts_right")
set_button_assignment(325,"FlyWithLua/landing_lts_taxi")