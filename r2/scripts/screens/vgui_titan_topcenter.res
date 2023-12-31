//967x202
vgui_titan_topcenter.res
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

	healthBarBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				-135
		wide				899
		tall				58
		visible				1
		image				vgui/HUD/titan_healthbar_bg
		scaleImage			1
		drawColor			"255 255 255 160"

		pin_to_sibling				Screen
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP

		zpos 				10
	}

	healthBarBGFill
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				899
		tall				58
		visible				0
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 255"

		pin_to_sibling				healthBarBG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		LEFT

		zpos 				11
	}

	healthBarFG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				899
		tall				58
		visible				1
		image				vgui/HUD/titan_healthbar_fill
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				healthBarBG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		LEFT

		zpos				15
	}

// 	healthBarPermFG
// 	{
// 		ControlName			ImagePanel
// 		xpos				0
// 		ypos				0
// 		wide				899
// 		tall				58
// 		visible				1
// 		image				vgui/HUD/titan_healthbar_perm
// 		scaleImage			1
// 		drawColor			"255 255 255 160"
//
// 		pin_to_sibling				healthBarBG
// 		pin_corner_to_sibling		LEFT
// 		pin_to_sibling_corner		LEFT
//
// 		zpos				12
// 	}

	healthBarTextBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				45
		wide				809
		tall				58
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 225"

		pin_to_sibling				healthBarBG
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM

		zpos				20
	}

	healthBarText
	{
		ControlName			Label
		xpos				0
		ypos				45
		wide				899
		tall				58
		visible				0
		fgcolor_override	"255 64 64 255"
		font				HudNumbersSmall
		labelText			">> REACTOR CRITICAL <<"
		textAlignment		center

		pin_to_sibling				healthBarBG
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		BOTTOM

		zpos				21
	}


	healthBarReserveBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				818
		tall				36
		visible				1
		image				vgui/HUD/titan_doomedbar_bg_short
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				healthBarBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER

		zpos				22
	}


	healthBarReserveFG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				818
		tall				36
		visible				1
		image				vgui/HUD/titan_doomedbar_fill
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				healthBarBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER

		zpos				25
	}

	compassBar
	{
		ControlName			ImagePanel
		xpos				0
		ypos				-135
		wide				944
		tall				58
		visible				0
		image				vgui/HUD/compass_ticker
		scaleImage			1
		drawColor			"220 220 220 160"

		pin_to_sibling				Screen
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP

		zpos 				3
	}
}
 