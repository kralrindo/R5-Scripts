"resource/ui/menus/panels/video.res"
{
	PanelFrame
	{
		ControlName				ImagePanel

		zpos                    0
		wide					%100
		tall					1150
		visible					0
		enabled 				1
		scaleImage				1
		image					"vgui/HUD/white"
		drawColor				"255 0 0 200"
	}

    LblMemoryWarning
    {
        ControlName				Label
        font					Default_27_ShadowGlow
        pin_to_sibling			LblAdvVideoSubheaderText
        pin_corner_to_sibling	LEFT
        pin_to_sibling_corner	RIGHT
        use_pin_locale_direction    1
        xpos                    16
        ypos                    0
        tall                    50
        wide                    900
        wrap					1
        visible                 0
        textAlignment			"west"
        fgcolor_override		"255 45 45 255"
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    SwchDisplayMode // mat_setvideomode 1280 720 1 0
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        navDown					SwchAspectRatio
        tabPosition				1
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
		ypos                    0
    }
    SwchAspectRatio // mat_setvideomode 1280 720 1 0
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchDisplayMode
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchDisplayMode
        navDown					SwchResolution
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchResolution // mat_setvideomode 1280 720 1 0
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchAspectRatio
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchAspectRatio
        navDown					SldBrightness
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SldBrightness
    {
        ControlName				SliderControl
        InheritProperties		SliderControl
        classname 				"AdvancedVideoButtonClass"
        pin_to_sibling			SwchResolution
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchResolution
        navDown					SldFOV
        minValue				0
        maxValue				1
        stepSize				0.05
        inverseFill				0
        showLabel               3
        visible                 1
    }
    SldFOV
    {
        ControlName				SliderControl
        InheritProperties		SliderControl
        classname 				"AdvancedVideoButtonClass"

        pin_to_sibling          SldBrightness
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SldBrightness
        navDown					SwchFOVAbilityScaling
        minValue				1.0
        maxValue				1.55
        stepSize				0.0275
        inverseFill				0
    }
    TextEntrySldFOV
    {
        ControlName				TextEntry
        InheritProperties       SliderControlTextEntry

        pin_to_sibling			SldFOV
        pin_corner_to_sibling	RIGHT
        pin_to_sibling_corner	RIGHT
        use_pin_locale_direction    1
    }

    SwchFOVAbilityScaling
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        classname               "AdvancedVideoButtonClass"
        style                   DialogListButton
        pin_to_sibling          SldFOV
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        navUp					SldFOV
        navDown					SwchSprintCameraSmoothing
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
    }

    SwchSprintCameraSmoothing
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        //classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchFOVAbilityScaling
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchFOVAbilityScaling
        navDown					SwchVSync
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
        visible                 1
    }
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    ImgAdvVideoSubheaderBackground
    {
        ControlName				ImagePanel
        InheritProperties		SubheaderBackgroundWide
        xpos					0
        ypos					6
        pin_to_sibling			SwchSprintCameraSmoothing
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        use_pin_locale_direction    1
    }
    LblAdvVideoSubheaderText
    {
        ControlName				Label
        InheritProperties		SubheaderText
        pin_to_sibling			ImgAdvVideoSubheaderBackground
        pin_corner_to_sibling	LEFT
        pin_to_sibling_corner	LEFT
        use_pin_locale_direction    1
        labelText				"#MENU_ADVANCED"
    }

    SwchVSync // mat_vsync, mat_triplebuffered
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			ImgAdvVideoSubheaderBackground
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        use_pin_locale_direction    1
        navUp					SwchSprintCameraSmoothing
        navDown					SwchReflex
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
	SwchReflex 
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchVSync
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchVSync
        navDown					SldAdaptiveRes
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SldAdaptiveRes
    {
        ControlName				SliderControl
        InheritProperties		SliderControl
        classname				"AdvancedVideoButtonClass"
        pin_to_sibling			SwchReflex
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        minValue				0
        stepSize				1
        navUp					SwchReflex
        navDown					SwchAdaptiveSupersample
    }
    TextEntryAdaptiveRes
    {
        ControlName				TextEntry
        InheritProperties       SliderControlTextEntry

        pin_to_sibling			SldAdaptiveRes
        pin_corner_to_sibling	RIGHT
        pin_to_sibling_corner	RIGHT
        use_pin_locale_direction    1
    }
    SwchAdaptiveSupersample
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SldAdaptiveRes
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SldAdaptiveRes
        navDown					SwchAntialiasing
        childGroupAlways        ChoiceButtonAlways
    }
    SwchAntialiasing
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchAdaptiveSupersample
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchAdaptiveSupersample
        navDown					SwchDynamicStreamingBudget [$DX12]
        navDown					SwchTextureDetail [!$DX12]
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchDynamicStreamingBudget [$DX12]
    {
        ControlName				RuiButton
        InheritProperties			SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling				SwchAntialiasing
        pin_corner_to_sibling			TOP_LEFT
        pin_to_sibling_corner			BOTTOM_LEFT
        navUp					SwchAntialiasing
        navDown					SwchTextureDetail
        // list is populated by code
        childGroupAlways			MultiChoiceButtonAlways
    }
    SwchTextureDetail
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling				SwchDynamicStreamingBudget [$DX12]
        pin_to_sibling				SwchAntialiasing [!$DX12]
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchDynamicStreamingBudget [$DX12]
        navUp					SwchAntialiasing [!$DX12]
        navDown					SwchFilteringMode
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchFilteringMode
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchTextureDetail
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchTextureDetail
        navDown					SwchAmbientOcclusionQuality
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchAmbientOcclusionQuality
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchFilteringMode
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchFilteringMode
        navDown					SwchSunShadowCoverage
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchSunShadowCoverage
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchAmbientOcclusionQuality
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchAmbientOcclusionQuality
        navDown					SwchSunShadowDetail
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
    }
    SwchSunShadowDetail
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchSunShadowCoverage
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchSunShadowCoverage
        navDown					SwchSpotShadowDetail
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
    }
    SwchSpotShadowDetail
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchSunShadowDetail
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchSunShadowDetail
        navDown					SwchVolumetricLighting
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchVolumetricLighting
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        classname               "AdvancedVideoButtonClass"
        style                   DialogListButton
        pin_to_sibling          SwchSpotShadowDetail
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        navUp                   SwchSpotShadowDetail
        navDown                 SwchVolumetricFog [$CVAR_developer]
        navDown                 SwchDynamicSpotShadows [!$CVAR_developer]
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
    }
    SwchVolumetricFog [$CVAR_developer]
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        classname               "AdvancedVideoButtonClass"
        style                   DialogListButton
        pin_to_sibling          SwchVolumetricLighting
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        navUp                   SwchVolumetricLighting
        navDown                 SwchDynamicSpotShadows
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchDynamicSpotShadows
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling          SwchVolumetricFog [$CVAR_developer]
        pin_to_sibling			SwchVolumetricLighting [!$CVAR_developer]
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp                   SwchVolumetricFog [$CVAR_developer]
        navUp					SwchVolumetricLighting [!$CVAR_developer]
        navDown					SwchModelDetail
        // list is populated by code
        childGroupAlways        ChoiceButtonAlways
    }
    SwchModelDetail
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchDynamicSpotShadows
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchDynamicSpotShadows
        navDown					SwchEffectsDetail
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchEffectsDetail // This option is not currently stored or applied by code
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchModelDetail
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchModelDetail
        navDown					SwchImpactMarks
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchImpactMarks
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchEffectsDetail
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchEffectsDetail
        navDown					SwchRagdolls
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchRagdolls
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        classname				"AdvancedVideoButtonClass"
        style					DialogListButton
        pin_to_sibling			SwchImpactMarks
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchImpactMarks
       
                                                   
      
        // list is populated by code
        childGroupAlways        MultiChoiceButtonAlways
    }
       
                       
     
                                         
                                            
                                                          
                                                
                                            
                                        
                                           
                              
                                    
                                                  
     
      
	PanelBottom
	{
		ControlName				Label
		labelText               ""

		zpos                    0
		wide					1
		tall					1
		visible					1
		enabled 				0

       
                                      
                                                    
     
        pin_to_sibling			SwchRagdolls
      
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    LblFPSWarning
    {
        ControlName				Label
        font					Default_27_ShadowGlow
        allCaps					0
        pin_to_sibling			ImgAdvVideoSubheaderBackground
        pin_corner_to_sibling	LEFT
        pin_to_sibling_corner	LEFT
        wide					1200
        tall					58
        xpos					-220
        ypos					0
        wrap					1
        visible                 0
        labelText				"#FPS_WARNING"
        textAlignment			"west"
        fgcolor_override		"192 192 192 255"
        zpos					0
    }
}
 