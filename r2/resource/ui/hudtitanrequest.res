"Resource/UI/HudTitanRequest.res"
{
	Background
	{
		ControlName			ImagePanel

		xpos				0
		ypos				0
		zpos 				1

		wide				310
		tall				290

		visible				1
		image				vgui/hud/white
		scaleImage			1
		drawColor			"0 0 0 145"
	}

	TitanRequest_SuperTitle
	{
		ControlName			Label
		visible				1
		ypos				-10
		zpos				10
		wide				300
		tall				25
		labelText			"#REQUEST_TITAN_SUPPORT_TIME"
		allCaps				1
		font				Default_21_ShadowGlow
		auto_wide_to_contents	1
		textAlignment		center
		fgcolor_override		"255 255 255 255"

		pin_to_sibling				Background
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP
	}

	TitanRequest_Title
	{
		ControlName			Label
		visible				1
		ypos				10
		zpos				10
		wide				300
		tall				25
		labelText			"unfilled"
		allCaps				0
		font				Default_21_ShadowGlow
		auto_wide_to_contents	1
		textAlignment		center
		fgcolor_override		"204 234 255 255"

		pin_to_sibling				TitanRequest_SuperTitle
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequest_Ignore
	{
		ControlName			Label
		visible				1
		ypos				5
		zpos				10
		wide				300
		tall				25
		labelText			"#REQUEST_TITAN_OR_IGNORE"
		allCaps				0
		font				Default_21_ShadowGlow
		auto_wide_to_contents	1
		textAlignment		center
		fgcolor_override		"134 184 215 255"

		pin_to_sibling				TitanRequest_Title
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequest_Divider
	{
		ControlName			Label
		visible				1
		zpos				10
		wide				300
		tall				26
		labelText			"______________________"
		allCaps				0
		font				Default_21_ShadowGlow
		auto_wide_to_contents	1
		textAlignment		center
		fgcolor_override		"104 134 155 255"

		pin_to_sibling				TitanRequest_Title
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlotAnchor
	{
		ControlName			Label
		ypos				-10
		zpos 				10
		wide				300
		tall				26
		visible				0

		pin_to_sibling				TitanRequest_Ignore
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlot1
	{
		ControlName			CNestedPanel
		zpos 				10
		wide				300
		tall				26
		visible				1
		controlSettingsFile	"resource/UI/HudTitanRequestSlot.res"

		pin_to_sibling				TitanRequestSlotAnchor
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlot2
	{
		ControlName			CNestedPanel
		zpos 				10
		wide				300
		tall				26
		visible				1
		controlSettingsFile	"resource/UI/HudTitanRequestSlot.res"

		pin_to_sibling				TitanRequestSlot1
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlot3
	{
		ControlName			CNestedPanel
		zpos 				10
		wide				300
		tall				26
		visible				1
		controlSettingsFile	"resource/UI/HudTitanRequestSlot.res"

		pin_to_sibling				TitanRequestSlot2
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlot4
	{
		ControlName			CNestedPanel
		zpos 				10
		wide				300
		tall				26
		visible				1
		controlSettingsFile	"resource/UI/HudTitanRequestSlot.res"

		pin_to_sibling				TitanRequestSlot3
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlot5
	{
		ControlName			CNestedPanel
		zpos 				10
		wide				300
		tall				26
		visible				1
		controlSettingsFile	"resource/UI/HudTitanRequestSlot.res"

		pin_to_sibling				TitanRequestSlot4
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	TitanRequestSlot6
	{
		ControlName			CNestedPanel
		zpos 				10
		wide				300
		tall				26
		visible				1
		controlSettingsFile	"resource/UI/HudTitanRequestSlot.res"

		pin_to_sibling				TitanRequestSlot5
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

} 