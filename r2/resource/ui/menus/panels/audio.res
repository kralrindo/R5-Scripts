"resource/ui/menus/panels/audio.res"
{
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    SldMasterVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        tabPosition             1
        navDown                 SwchOutputDevice
        conCommand              "sound_volume"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3
        ypos                    0
    }

    NoDeviceWarningText
    {
        ControlName             Label
        font                    Default_27_ShadowGlow
        labelText               "#SETTING_WARNING_NO_AUDIO_DEVICE"
        fgcolor_override        "255 45 45 255"

        pin_to_sibling          SldMasterVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        xpos                    -8
        ypos                    6
        tall                    50
        wide                    900

        visible                 0 // shown by script, mutually exclusive with SwchOutputDevice
    }

    SwchOutputDevice
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        className               "SettingScrollSizer"
        style					DialogListButton
        navUp					SldMasterVolume
        navDown					SwchSpeakerConfig
        ConVar                  "miles_output_device"
        // list is populated by code
        
        pin_to_sibling			SldMasterVolume
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchSpeakerConfig
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        className               "SettingScrollSizer"
        style                   DialogListButton
        navUp                   SwchOutputDevice
        navDown                 SwchAudioLanguage
        ConVar                  "miles_channels"
        // list is populated by code

        pin_to_sibling	        SwchOutputDevice
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT

        childGroupAlways        MultiChoiceButtonAlways
    }


    SwchAudioLanguage
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        className               "SettingScrollSizer"
        style                   DialogListButton
        navUp                   SwchSpeakerConfig
        navDown                 SwchInputDevice
        ConVar                  "miles_language"
        list
        {
            "#SETTING_DEFAULT"          ""
            "#GAMEUI_LANGUAGE_ENGLISH"  "english"
        }

        pin_to_sibling          SwchSpeakerConfig
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT

        visible                 0 //[$ENGLISH || $PORTUGUESE || $TCHINESE]
        //visible                 1 [!$ENGLISH && !$PORTUGUESE && !$TCHINESE]

        childGroupAlways        ChoiceButtonAlways
    }

    VoiceChatHeader
    {
        ControlName				ImagePanel
        InheritProperties		SubheaderBackgroundWide
        className               "SettingScrollSizer"
        xpos					0
        ypos					6
        pin_to_sibling			SwchSpeakerConfig //[$ENGLISH || $PORTUGUESE || $TCHINESE]
        //pin_to_sibling			SwchAudioLanguage [!$ENGLISH && !$PORTUGUESE && !$TCHINESE]
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        use_pin_locale_direction    1
    }
    VoiceChatHeaderText
    {
        ControlName				Label
        InheritProperties		SubheaderText
        pin_to_sibling			VoiceChatHeader
        pin_corner_to_sibling	LEFT
        pin_to_sibling_corner	LEFT
        use_pin_locale_direction    1
        labelText				"#MENU_VOICE_CHAT"
    }
    SwchInputDevice
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        className               "SettingScrollSizer"
        style					DialogListButton
        navUp					SwchAudioLanguage
        navDown					SwchPushToTalk
        ConVar                  "voice_input_device"
        // list is populated by code
        
        pin_to_sibling			VoiceChatHeader
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        use_pin_locale_direction    1

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchPushToTalk
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        className               "SettingScrollSizer"
        style                   DialogListButton
        navUp                   SwchInputDevice
        navDown                 SldOpenMicSensitivity
        ConVar                  "TalkIsStream"
        list
        {
            "#SETTING_PTT"      0
            "#SETTING_OPENMIC"  1
        }

        pin_to_sibling          SwchInputDevice
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT

        childGroupAlways        ChoiceButtonAlways
    }
    SldOpenMicSensitivity
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SwchPushToTalk
        navDown                 SldVoiceChatVolume
        conCommand              "speex_quiet_threshold"
        minValue                0
        maxValue                10000
        stepSize                50
        inverseFill             0
        showLabel               1
		tall_nx_handheld		80 [$NX]
		
        pin_to_sibling          SwchPushToTalk
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT

        PrgValue
        {
            ControlName				RuiPanel
            fieldName				PrgValue
            xpos                    50
            zpos					5
            wide					280
            tall					60
            tall_nx_handheld		80 [$NX]
            visible					1
            enabled					1
            tabPosition				0
            rui                     "ui/settings_voice_slider.rpak"
        }
    }
    SldVoiceChatVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldOpenMicSensitivity
        navDown                 SldSFXVolume
        conCommand              "sound_volume_voice"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3

        pin_to_sibling          SldOpenMicSensitivity
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
    }

    AdvancedHeader
    {
        ControlName				ImagePanel
        InheritProperties		SubheaderBackgroundWide
        className               "SettingScrollSizer"
        xpos					0
        ypos					6
        pin_to_sibling			SldVoiceChatVolume
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        use_pin_locale_direction    1
    }
    AdvancedHeaderText
    {
        ControlName				Label
        InheritProperties		SubheaderText
        pin_to_sibling			AdvancedHeader
        pin_corner_to_sibling	LEFT
        pin_to_sibling_corner	LEFT
        use_pin_locale_direction    1
        labelText				"#MENU_ADVANCED"
    }

    SldSFXVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldVoiceChatVolume
        navDown                 SldDialogueVolume
        conCommand              "sound_volume_sfx"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3

        pin_to_sibling          AdvancedHeader
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        use_pin_locale_direction    1
    }
    SldDialogueVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldSFXVolume
        navDown                 SldMusicVolume
        conCommand              "sound_volume_dialogue"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3

        pin_to_sibling          SldSFXVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
    }
    SldMusicVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldDialogueVolume
        navDown                 SldLobbyMusicVolume
        conCommand              "sound_volume_music_game"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3

        pin_to_sibling          SldDialogueVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
    }
    SldLobbyMusicVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldMusicVolume
        navDown                 SwchSoundWithoutFocus
        conCommand              "sound_volume_music_lobby"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3


        pin_to_sibling          SldMusicVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
    }

    SwchSoundWithoutFocus
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        className               "SettingScrollSizer"
        style                   DialogListButton
        navUp                   SldLobbyMusicVolume
        ConVar                  "sound_without_focus"
        list
        {
            "#SETTING_OFF"  0
            "#SETTING_ON"   1
        }

        pin_to_sibling          SldLobbyMusicVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        childGroupAlways        ChoiceButtonAlways
    }

    SwchVipTelemetry
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        className               "SettingScrollSizer"
        style                   DialogListButton
        ConVar                  "xlog_tls_allow_vip_upload"
        list
        {
            "#SETTING_OFF"  0
            "#SETTING_ON"   1
        }

        navUp                   SwchSoundWithoutFocus
        pin_to_sibling          SwchSoundWithoutFocus

        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        childGroupAlways        ChoiceButtonAlways

        visible                 1 // usually hidden by script, visible by default for panel height calc
    }
} 