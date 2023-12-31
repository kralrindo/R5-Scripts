"resource/ui/menus/panels/audio_console.res"
{
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    SldMasterVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        xpos                    0
        ypos                    0
        tabPosition             1
        navDown                 SldSFXVolume
        conCommand              "sound_volume"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3
    }

    SldSFXVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldMasterVolume
        navDown                 SldDialogueVolume
        conCommand              "sound_volume_sfx"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3

        pin_to_sibling          SldMasterVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        ypos                    6
        ypos_nx_handheld        2			[$NX || $NX_UI_PC]
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
        ypos                    6
        ypos_nx_handheld        2			[$NX || $NX_UI_PC]
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
        ypos                    6
        ypos_nx_handheld        2			[$NX || $NX_UI_PC]
    }

    SldLobbyMusicVolume
    {
        ControlName             SliderControl
        InheritProperties       SliderControl
        className               "SettingScrollSizer"
        navUp                   SldMusicVolume
        //navDown                 SwchAudioLanguage [!$ENGLISH]
        conCommand              "sound_volume_music_lobby"
        minValue                0.0
        maxValue                1.0
        stepSize                0.05
        inverseFill             0
        showLabel               3


        pin_to_sibling          SldMusicVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        ypos                    6
        ypos_nx_handheld        2			[$NX || $NX_UI_PC]
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

        navUp                   SldLobbyMusicVolume
        pin_to_sibling          SldLobbyMusicVolume

        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT
        childGroupAlways        ChoiceButtonAlways
        
        ypos                    6
        ypos_nx_handheld        2			[$NX || $NX_UI_PC]

        visible                 1 // usually hidden by script, visible by default for panel height calc
    }

    SwchAudioLanguage
    {
        ControlName             RuiButton
        InheritProperties       SwitchButton
        className               "SettingScrollSizer"
        style                   DialogListButton
        navUp                   SldLobbyMusicVolume
        ConVar                  "miles_language"
        list
        {
            "#SETTING_DEFAULT"          ""
            "#GAMEUI_LANGUAGE_ENGLISH"  "english"
        }

        pin_to_sibling          SldLobbyMusicVolume
        pin_corner_to_sibling   TOP_LEFT
        pin_to_sibling_corner   BOTTOM_LEFT

        visible                 0 //[$ENGLISH || $PORTUGUESE || $TCHINESE]
        //visible                 1 [!$ENGLISH && !$PORTUGUESE && !$TCHINESE]

        ypos                    6
        ypos_nx_handheld        2			[$NX || $NX_UI_PC]
        childGroupAlways        ChoiceButtonAlways
    }
} 