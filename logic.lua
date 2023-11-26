
-- LED output for AutoPilot lights 
ap_FD_light = hw_output_add("AP Flight Director", false)
ap_Engage_light = hw_output_add("AP Engage light", false)
ap_XFR_light = hw_output_add("AP XFR Light", false) 
ap_TURB_light = hw_output_add("AP TURB light", false) 
ap_Speed_light = hw_output_add("AP Speed light", false) 
ap_APPR_light = hw_output_add("AP APPR light", false) 
ap_BC_light = hw_output_add("AP BC light", false) 
ap_Heading_light = hw_output_add("AP Heading light", false) 
ap_Nav_light = hw_output_add("AP Nav light", false) 
ap_Bank_light = hw_output_add("AP Bank light", false) 
ap_ALT_light = hw_output_add("AP ALT light", false) 
ap_VS_light = hw_output_add("AP VS light", false) 
ap_FD2_light = hw_output_add("AP FD2 light", false) 
ap_VNav_light = hw_output_add("AP VNav light", false)
ap_12Bank_light = hw_output_add("AP 1/2 Bank light", false)

-- End of AP LED outs 
xpl_dataref_subscribe("crj_series/command/autopilot/1_2_bank_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_12Bank_light , false) 
    else
        print (state)
        hw_output_set(ap_12Bank_light , true) 
    end 
end)

xpl_dataref_subscribe("crj_series/command/autopilot/vnav_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_VNav_light , false) 
    else
        print (state)
        hw_output_set(ap_VNav_light , true) 
    end 
end)
xpl_dataref_subscribe("crj_series/command/autopilot/vs_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_VS_light , false) 
    else
        print (state)
        hw_output_set(ap_VS_light , true) 
    end 
end)
xpl_dataref_subscribe("crj_series/command/autopilot/1_2_bank_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_Bank_light, false) 
    else
        print (state)
        hw_output_set(ap_Bank_light, true) 
    end 
end)

xpl_dataref_subscribe("crj_series/command/autopilot/nav_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_Nav_light, false) 
    else
        print (state)
        hw_output_set(ap_Nav_light, true) 
    end 
end)

xpl_dataref_subscribe("crj_series/command/autopilot/hdg_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_Heading_light, false) 
    else
        print (state)
        hw_output_set(ap_Heading_light, true) 
    end 
end)

xpl_dataref_subscribe("crj_series/command/autopilot/b_c_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_BC_light, false) 
    else
        print (state)
        hw_output_set(ap_BC_light, true) 
    end 
end)


xpl_dataref_subscribe("crj_series/command/autopilot/appr_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_APPR_light, false) 
    else
        print (state)
        hw_output_set(ap_APPR_light, true) 
    end 
end)

xpl_dataref_subscribe("crj_series/command/autopilot/turb_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_TURB_light, false) 
    else
        print (state)
        hw_output_set(ap_TURB_light, true) 
    end 
end) 

xpl_dataref_subscribe("crj_series/command/autopilot/xfr_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_XFR_light, false) 
    else
        print (state)
        hw_output_set(ap_XFR_light, true) 
    end 
end) 
xpl_dataref_subscribe("crj_series/command/autopilot/alt_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_ALT_light, false) 
    else
        print (state)
        hw_output_set(ap_ALT_light, true) 
    end 
end) 
xpl_dataref_subscribe("crj_series/command/autopilot/fd1_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_FD_light, false) 
    else
        print (state)
        hw_output_set(ap_FD_light, true) 
    end 
end) 

xpl_dataref_subscribe("crj_series/command/autopilot/ap_engage_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_Engage_light, false) 
    else
        print (state)
        hw_output_set(ap_Engage_light, true) 
    end 
end) 

xpl_dataref_subscribe("crj_series/command/autopilot/speed_lit","FLOAT", function(state)
    if state == 0 then 
        print (state)
          hw_output_set(ap_Speed_light, false) 
    else
        print (state)
        hw_output_set(ap_Speed_light, true) 
    end 
end)