SideNotification.res
{
	SideNotification_Anchor
	{
		ControlName					Label
		xpos						0
		ypos						0
		wide						%100
		tall						%100
		visible						0
		proportionalToParent		1
	}
	SideNotification_BG
	{
		ControlName			ImagePanel
		zpos				1012
		wide				628
		tall				80
		image				"vgui/hud/coop/wave_callout_strip"
		visible				0
		enable				1
		scaleImage			1
		fgcolor_override 	"255 255 255 5"

		pin_to_sibling				SideNotification_Anchor
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	SideNotification_FG
	{
		ControlName			ImagePanel
		zpos				1013
		wide				628
		tall				80
		image				"vgui/hud/coop/wave_callout_strip_lines"
		visible				0
		enable				1
		scaleImage			1

		pin_to_sibling				SideNotification_BG
		pin_corner_to_sibling		TOP_LEFT
		pin_to_sibling_corner		TOP_LEFT
	}

	SideNotification_EventName
	{
		ControlName			Label
		zpos				1014
		xpos 				8
		wide				250
		tall				80
		visible				0
		font				Default_21_ShadowGlow
		labelText			"[EVENT NAME]"
		allcaps				1
		textAlignment		east
		fgcolor_override 	"230 230 230 255"
		//bgcolor_override 	"0 255 0 128"

		pin_to_sibling				SideNotification_RectangleIcon
		pin_corner_to_sibling		RIGHT
		pin_to_sibling_corner		LEFT
	}

	SideNotification_RectangleIcon
	{
		ControlName			ImagePanel
		zpos				1014
		xpos 				-100
		wide				183
		tall				50
		visible				0
		image				vgui/white
		scaleImage			1

		pin_to_sibling				SideNotification_BG
		pin_corner_to_sibling		RIGHT
		pin_to_sibling_corner		RIGHT
	}

	SideNotification_SquareIcon
	{
		ControlName			ImagePanel
		zpos				1014
		xpos 				0
		wide				80
		tall				80
		visible				0
		image				vgui/white
		scaleImage			1

		pin_to_sibling				SideNotification_RectangleIcon
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	SideNotification_EventValue
	{
		ControlName			Label
		zpos				1014
		xpos 				0
		wide 				81
		tall				80
		visible				0
		font				Default_21_ShadowGlow
		labelText			"[+200]"
		allcaps				1
		textAlignment		east
		fgcolor_override 	"230 230 230 255"
		//bgcolor_override 	"0 255 255 128"

		pin_to_sibling				SideNotification_Icon
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		RIGHT
	}

	SideNotification_Flare
	{
		ControlName			ImagePanel
		zpos				1012
		wide				628
		tall				80
		image				"vgui/hud/coop/score_notification_flare"
		visible				0
		enable				1
		scaleImage			1

		pin_to_sibling				SideNotification_BG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}
} 