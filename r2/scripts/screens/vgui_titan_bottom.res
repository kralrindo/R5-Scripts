//967x427
vgui_titan_bottom.res
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

	targetHealthBarBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				-22
		wide				899
		tall				36
		visible				1
		image				vgui/HUD/titan_healthbar_bg
		scaleImage			1
		drawColor			"255 255 255 160"

		pin_to_sibling				Screen
		pin_corner_to_sibling		TOP
		pin_to_sibling_corner		TOP

		zpos 				10
	}

	targetHealthBarBGFill
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				899
		tall				36
		visible				0
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 1"

		pin_to_sibling				targetHealthBarBG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		LEFT

		zpos 				11
	}

	targetHealthBarFG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				899
		tall				36
		visible				1
		image				vgui/HUD/target_healthbar_fill
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				targetHealthBarBG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		LEFT

		zpos				15
	}

// 	targetHealthBarPermFG
// 	{
// 		ControlName			ImagePanel
// 		xpos				0
// 		ypos				0
// 		wide				899
// 		tall				36
// 		visible				1
// 		image				vgui/HUD/target_healthbar_perm
// 		scaleImage			1
// 		drawColor			"255 255 255 160"
//
// 		pin_to_sibling				targetHealthBarBG
// 		pin_corner_to_sibling		LEFT
// 		pin_to_sibling_corner		LEFT
//
// 		zpos				12
// 	}

	targetHealthBarReserveBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				899
		tall				27
		visible				1
		image				vgui/HUD/titan_doomedbar_bg
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				targetHealthBarBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER

		zpos				20
	}


	targetHealthBarReserveFG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				899
		tall				27
		visible				1
		image				vgui/HUD/target_doomedbar_fill
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				targetHealthBarBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER

		zpos				25
	}

	targetHealthBarText
	{
		ControlName			Label
		xpos				0
		ypos				0
		wide				899
		tall				49
		visible				0
		fgcolor_override	"255 255 255 255"
		font				Default_34_ShadowGlow
		labelText			"BOB"
		textAlignment		center

		pin_to_sibling				targetHealthBarBG
		pin_corner_to_sibling		CENTER
		pin_to_sibling_corner		CENTER

		zpos				300
	}
}
 