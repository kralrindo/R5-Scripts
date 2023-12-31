//967x427
vgui_titan_overcharge.res
{
	Screen
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				967
		tall				967
		visible				1
		scaleImage			1
		fillColor			"0 0 0 0"
		drawColor			"0 0 0 0"

		zpos				0
	}

	OverchargeBarBackground
	{
		ControlName			Label
		xpos				0
		ypos				0
		wide				18
		tall				139
		visible				1
		font				MPScoreBarSmall
		labelText			""
		textAlignment		center
		bgcolor_override	"0 0 0 0"

		pin_to_sibling				Screen
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP

		zpos				199
	}

	OverchargeLabel
	{
		ControlName			Label
		xpos				-112
		ypos				-90
		wide				540
		tall				90
		visible				1
		font				TitanHUD
		labelText			"TEST LABEL TEXT"
		textAlignment		center

		zpos				200

		pin_to_sibling				OverchargeBarBackground
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	OverchargeLabelBG
	{
		ControlName			Label
		xpos				-4
		ypos				-4
		wide				540
		tall				90
		visible				1
		font				TitanHUD
		labelText			"TEST LABEL TEXT"
		textAlignment		center

		zpos				200

		pin_to_sibling				OverchargeLabel
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP
	}

	OverchargeTimerLabel
	{
		ControlName			Label
		xpos				-112
		ypos				-45
		wide				540
		tall				90
		visible				1
		font				Default_34_ShadowGlow
		labelText			"TEST LABEL TEXT"
		textAlignment		center

		zpos				200

		pin_to_sibling				OverchargeBarBackground
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}

	OverchargeTimerLabelBG
	{
		ControlName			Label
		xpos				-4
		ypos				-4
		wide				540
		tall				90
		visible				1
		font				Default_34_ShadowGlow
		labelText			"TEST LABEL TEXT"
		textAlignment		center

		zpos				200

		pin_to_sibling				OverchargeTimerLabel
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP
	}

	// everything was 72x48
	OverchargeHintIconBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				-34
		wide				180
		tall				135
		visible				1
		image				vgui/HUD/xbutton_tap_bg
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				OverchargeLabel
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM
	}


	OverchargeRingBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				9
		wide				180
		tall				135
		visible				1
		image				vgui/HUD/xbutton_eject_ring_bg
		scaleImage			1
		drawColor			"0 0 0 128"

		pin_to_sibling				OverchargeHintIconBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	OverchargeRingA
	{
		ControlName			ImagePanel
		xpos				0
		ypos				4
		wide				180
		tall				135
		visible				1
		image				vgui/HUD/xbutton_eject_ring_a
		scaleImage			1
		drawColor			"164 233 108 255"

		pin_to_sibling				OverchargeHintIconBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	OverchargeRingB
	{
		ControlName			ImagePanel
		xpos				0
		ypos				4
		wide				180
		tall				135
		visible				1
		image				vgui/HUD/xbutton_eject_ring_b
		scaleImage			1
		drawColor			"164 233 108 255"

		pin_to_sibling				OverchargeHintIconBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	OverchargeRingC
	{
		ControlName			ImagePanel
		xpos				0
		ypos				4
		wide				180
		tall				135
		visible				1
		image				vgui/HUD/xbutton_eject_ring_c
		scaleImage			1
		drawColor			"164 233 108 255"

		pin_to_sibling				OverchargeHintIconBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}

	OverchargeHintIcon
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				180
		tall				135
		visible				1
		image				vgui/HUD/xbutton_tap
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				OverchargeHintIconBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER
	}
}
 