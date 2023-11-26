--*******************************************************************
--**                 Auxiliary Commands for CJR700
--*******************************************************************

-- Manually set to use with my throttles unlock and move to ide--

command_once ("crj_series/pedestal/throttlelock_left_sw")
command_once ("crj_series/pedestal/throttlelock_right_sw")
command_once ("crj_series/tablet/settings/misc/honeycomb")

DataRef("idle_left", "crj_series/pedestal/throttle_lever_left","writeable")
DataRef("idle_right", "crj_series/pedestal/throttle_lever_right","writeable")

--crj_series/electrical/ac_power_available_lit
idle_left = 0 
idle_right = 0 


---* Might use this at somepoint to pop up a window to show me what buttons are ont in the right position ** 
-- function status_window()
--    mstatus = ""
--    if (button (493)) then 
--        mstatus =  "Master is On"
--     else 
--        mstatus =  "Master is off"
--     end 

--    big_bubble(20, 20, "Button Status", mstatus)
--end

--do_every_draw("status_window()")