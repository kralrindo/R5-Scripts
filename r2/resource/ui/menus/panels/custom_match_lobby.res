resource/ui/menus/panels/custom_match_lobby.res
{
    ScreenFrame
    {
        ControlName				Label
        wide					%100
        tall					%100
        labelText				""
        visible				    0
        bgcolor_override        "255 255 0 10"
        paintbackground         1
        proportionalToParent    1
		clipRui                 0
    }

    PanelFrame
    {
        ControlName				Label
		wide					1826
		tall					1080
		ypos                    -55
        labelText				""
        visible				    0
        bgcolor_override        "255 255 0 64"
        paintbackground         1
        proportionalToParent    1
		clipRui                 0

        pin_to_sibling			ScreenFrame
        pin_corner_to_sibling   TOP
        pin_to_sibling_corner	TOP
    }

    LeftColumn
    {
        ControlName				Label
        wide                    372
        tall                    835
        labelText				""
        proportionalToParent    1

        pin_to_sibling          PanelFrame
        pin_corner_to_sibling   LEFT
        pin_to_sibling_corner   LEFT
    }

	JoinTeamHelper
    {
        ControlName				Label
        xpos					190
        ypos                    -60
		auto_tall_tocontents 	1
		wide                    1000
        tall					30
		textAlignment	        center
        visible					1
        labelText				""
        font					DefaultRegularFont
        fontHeight				30
        allcaps					1
        fgcolor_override		"255 255 255 130"

        pin_to_sibling			PanelFrame
        pin_corner_to_sibling	TOP
        pin_to_sibling_corner	TOP
    }

    LobbyRosterPanel
    {
        ControlName             CNestedPanel
        controlSettingsFile     "resource/ui/menus/panels/custom_match_lobby_roster.res"

        wide                    372
        tall                    400

		ypos                    6
        pin_to_sibling          LeftColumn
        pin_corner_to_sibling   TOP
        pin_to_sibling_corner   TOP
    }

    ChatPanel
	{
		ControlName				CBaseHudChat
		InheritProperties		ChatBox

        ypos                    10
        wide                    372
        tall                    300

        pin_to_sibling          LobbyRosterPanel
        pin_corner_to_sibling   TOP
        pin_to_sibling_corner   BOTTOM

        destination				"customlobby"
        interactive				1
        chatBorderThickness		1
        messageModeAlwaysOn		1
        hideInputBox			1 [!$WIN32]
        font 					Default_27
		defaultAdminOnly		1
		setUnusedScrollbarInvisible 1
		timestampChat			1
	}

	ChatFrame
    {
        ControlName				RuiButton
        ypos                    265
        zpos                    30
        wide                    372
        tall                    45

        labelText				""
        visible				    1
        proportionalToParent    1
        clipRui                 0

		pin_to_sibling          LobbyRosterPanel
        pin_corner_to_sibling   TOP
        pin_to_sibling_corner   BOTTOM
    }

    StartButton
    {
		ControlName				RuiButton
        classname               "MenuButton"
        wide                    372
        tall                    114

        pin_to_sibling          LeftColumn
        pin_corner_to_sibling   BOTTOM
        pin_to_sibling_corner   BOTTOM

        rui                     "ui/generic_ready_button.rpak"
        ruiArgs
        {
            buttonText          "#READY"
        }
    }
	PrivateMatchScoreboardPanel
	{
		ControlName           CNestedPanel
		wide                    1480
        tall                    850
		xpos                    20
		ypos                    0
		zpos                    1
		visible                 0
		enabled                 1
		controlSettingsFile     "resource/ui/menus/panels/teams_scoreboard_nx.res" [$NX]
		controlSettingsFile     "resource/ui/menus/panels/teams_scoreboard.res" [!$NX]

		xcounterscroll         0.0
		ycounterscroll         0.0

		pin_to_sibling          PanelFrame
        pin_corner_to_sibling   RIGHT
        pin_to_sibling_corner   RIGHT
	}

    MouseDragIcon
    {
        ControlName				RuiPanel

        wide                    272
        tall                    48
        visible					0
        enabled 				1
        scaleImage				1
        rui                     "ui/custom_match_team_roster_player.rpak"
        zpos                    20
    }
}
 