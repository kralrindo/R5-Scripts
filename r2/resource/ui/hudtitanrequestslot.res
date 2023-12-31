"Resource/UI/HudTitanRequestSlot.res"
{
	Background
	{
		ControlName		ImagePanel
		wide			%100
		tall			%100
		visible			0
		//image				vgui/hud/white
		scaleImage			1
		proportionalToParent	1
		zpos			0
		//drawColor			"255 0 0 15"
	}

	TitanRequest_PlayerSlot
	{
		ControlName			Label
		visible				1
		zpos				10
		wide				240
		tall				25
		labelText			"..."
		font				Default_21_ShadowGlow
		auto_wide_to_contents	1
		textAlignment		center
		fgcolor_override 	"255 255 255 255"

		pin_to_sibling				Background
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	TitanRequest_PlayerSkipped
	{
		ControlName			Label
		visible				0
		zpos				10
		wide				15
		tall				25
		labelText			"0"
		font				Default_21_ShadowGlow
		auto_wide_to_contents	1
		textAlignment		center
		fgcolor_override 	"255 255 255 255"

		pin_to_sibling				TitanRequest_PlayerSlot
		pin_corner_to_sibling		RIGHT
		pin_to_sibling_corner		LEFT
	}

	TitanRequest_TitanIcon
	{
		ControlName			ImagePanel

		xpos				0
		ypos				0
		zpos 				1

		wide				25
		tall				25

		visible				0
		image				"ui/icon_status_titan_friendly"
		scaleImage			1
		//drawColor			"0 0 0 85"

		pin_to_sibling				TitanRequest_PlayerSlot
		pin_corner_to_sibling		RIGHT
		pin_to_sibling_corner		LEFT
	}
} 