--**********************************************************************--
--** 				 Hydraulics Sections                     **--
--** 0 = on 1 = off  2 = auto
--**********************************************************************--


DataRef("hydraulic_2", "crj_series/hydraulics/2_switch_animation","writeable")
DataRef("hydraulic_1", "crj_series/hydraulics/1_switch_animation","writeable")
DataRef("hydraulic_3b", "crj_series/hydraulics/3b_switch_animation","writeable")
DataRef("hydraulic_3a", "crj_series/hydraulics/3a_switch_animation","writeable")

-- Hydro1 --
function hydro1_on()

    command_begin("crj_series/hydraulics/1_switch_up")
    command_end("crj_series/hydraulics/1_switch_up")
    hydraulic_1 = 0

end 

function hydro1_on_off()

    command_begin("crj_series/hydraulics/1_switch_down")
    command_end("crj_series/hydraulics/1_switch_down")
    
    hydraulic_1 = 1
end 


function hydro1_auto()
    command_begin("crj_series/hydraulics/1_switch_down")
    command_end("crj_series/hydraulics/1_switch_down")
    hydraulic_1 = 2
end

function hydro1_auto_off()
    command_begin("crj_series/hydraulics/1_switch_up")
    command_end("crj_series/hydraulics/1_switch_up")
    hydraulic_1 = 1
end


-- Hydro 3a 
function hydro3a_off()

    command_begin("crj_series/hydraulics/3a_switch_up")
    command_end("crj_series/hydraulics/3a_switch_up")
    hydraulic_3a = 0

end 

function hydro3a_on()

    command_begin("crj_series/hydraulics/3a_switch_down")
    command_end("crj_series/hydraulics/3a_switch_down")
    
    hydraulic_3a = 1
end 

-- Hydro2 --
function hydro2_on()

    command_begin("crj_series/hydraulics/2_switch_up")
    command_end("crj_series/hydraulics/2_switch_up")
    hydraulic_2 = 0

end 

function hydro2_on_off()

    command_begin("crj_series/hydraulics/2_switch_down")
    command_end("crj_series/hydraulics/2_switch_down")
    
    hydraulic_2 = 1
end 


function hydro2_auto()
    command_begin("crj_series/hydraulics/2_switch_down")
    command_end("crj_series/hydraulics/2_switch_down")
    hydraulic_2 = 2
end

function hydro2_auto_off()
    command_begin("crj_series/hydraulics/2_switch_up")
    command_end("crj_series/hydraulics/2_switch_up")
    hydraulic_2 = 1
end

-- hydro3 

function hydro3b_on()

    command_begin("crj_series/hydraulics/3b_switch_up")
    command_end("crj_series/hydraulics/3b_switch_up")
    hydraulic_3b = 0

end 

function hydro3b_on_off()

    command_begin("crj_series/hydraulics/3b_switch_down")
    command_end("crj_series/hydraulics/3b_switch_down")
    
    hydraulic_3b = 1
end 


function hydro3b_auto()
    command_begin("crj_series/hydraulics/3b_switch_down")
    command_end("crj_series/hydraulics/3b_switch_down")
    hydraulic_3b = 2
end

function hydro3b_auto_off()
    command_begin("crj_series/hydraulics/3b_switch_up")
    command_end("crj_series/hydraulics/3b_switch_up")
    hydraulic_3b = 1
end


create_command("FlyWithLua/hydro2_on","Hydro 2 Switch", "hydro2_on()","","hydro2_on_off()")
create_command("FlyWithLua/hydro2_auto","Hydro 2 Switch", "hydro2_auto()","","hydro2_auto_off()")
create_command("FlyWithLua/hydro3b_on","Hydro 3b Switch", "hydro3b_on()","","hydro3b_on_off()")
create_command("FlyWithLua/hydro3b_auto","Hydro 3b Switch", "hydro3b_auto()","","hydro3b_auto_off()")
create_command("FlyWithLua/hydro3a_on_off","Hydro 3a Switch", "hydro3a_on()","","hydro3a_off()")
create_command("FlyWithLua/hydro1_on","Hydro 1 Switch On", "hydro1_on()","","hydro1_on_off()")
create_command("FlyWithLua/hydro1_auto","Hydro 1 Switch Off", "hydro1_auto()","","hydro1_auto_off()")


set_button_assignment(349,"FlyWithLua/hydro2_on")
set_button_assignment(348,"FlyWithLua/hydro2_auto")
set_button_assignment(343,"FlyWithLua/hydro3b_on")
set_button_assignment(350,"FlyWithLua/hydro3b_auto")
set_button_assignment(344,"FlyWithLua/hydro3a_on_off")
set_button_assignment(346,"FlyWithLua/hydro1_on")
set_button_assignment(345,"FlyWithLua/hydro1_auto")