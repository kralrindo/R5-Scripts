"resource/ui/menus/panels/video_console.res"
{
	PanelFrame
	{
		ControlName				ImagePanel

		zpos                    0
		wide					%100
		tall					512
		visible					0
		enabled 				1
		scaleImage				1
		image					"vgui/HUD/white"
		drawColor				"255 0 0 200"
	}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    BtnBrightness
    {
        ControlName				RuiButton
        InheritProperties		WideButton		[!$NX]
        InheritProperties		SwitchButton		[$NX]
        navUp                   SwchSprintCameraSmoothing
        navDown					SldFOV                         [!$NX]
        navDown                 SwchFOVAbilityScaling           [$NX]
        tabPosition				1
        ypos                    0
        cursorPriority          1
    }

    SldFOV
    {
        ControlName				SliderControl
        InheritProperties		SliderControl
        classname 				"AdvancedVideoButtonClass"
        navUp					BtnBrightness
        navDown					SwchFOVAbilityScaling
        minValue				1.0
        maxValue				1.55
        stepSize				0.0275
        inverseFill				0
        showLabel               0
        visible                 0             [$NX]

        pin_to_sibling			BtnBrightness
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
    }
    TextEntrySldFOV
    {
        ControlName				TextEntry
        InheritProperties       SliderControlTextEntry

        pin_to_sibling			SldFOV
        pin_corner_to_sibling	RIGHT
        pin_to_sibling_corner	RIGHT
        use_pin_locale_direction    1

        visible                 0             [$NX]
    }

    SwchFOVAbilityScaling
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        classname               "AdvancedVideoButtonClass"
        style                   DialogListButton
        pin_to_sibling          SldFOV [!$NX]
        pin_to_sibling          BtnBrightness [$NX]
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        navUp					SldFOV [!$NX]
        navUp                   BtnBrightness [$NX]
        navDown					SwchSprintCameraSmoothing
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
    }

    SwchSprintCameraSmoothing
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchFOVAbilityScaling
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchFOVAbilityScaling
        
                                                             
                                                                   
	     
		navDown					BtnBrightness
       
        // list is populated by code
        visible                 1

        childGroupAlways        ChoiceButtonAlways
    }
       
                                         
     
                                         
                                            
                                                          
                                                
                                                         
                                        
                                           
                                           
                                 
                                    
                                                  
     
      
}
 