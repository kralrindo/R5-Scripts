//967x396
vgui_titan_lowercenter.res
{
	Screen
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				967
		tall				396
		visible				1
		scaleImage			1
		fillColor			"0 0 0 0"
		drawColor			"0 0 0 0"

		zpos				0
	}

	DamageLayer
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				207
		tall				148
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"255 0 0 0"

		zpos				10
	}

	DashAnchor
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				216
		tall				45
		visible				1
		scaleImage			1
		drawColor			"255 0 0 0"
		fillColor			"255 0 0 0"

		zpos				10
		pin_to_sibling				Screen
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM
	}

	DashName
	{
		ControlName			Label
		xpos				0
		ypos				-45
		wide				72
		tall				45
		visible				1
		font				Default_31_ShadowGlow
		labelText			"DASH"
		textAlignment		center

		zpos				200

		pin_to_sibling				Screen
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM
	}

	DashPip0BG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar_bg
		scaleImage			1
		drawColor			"0 0 0 192"

		pin_to_sibling				DashAnchor
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		LEFT

		zpos				200
	}

	DashPip1BG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar_bg
		scaleImage			1
		drawColor			"0 0 0 192"

		pin_to_sibling				DashPip0BG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		RIGHT

		zpos				200
	}

	DashPip2BG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar_bg
		scaleImage			1
		drawColor			"0 0 0 192"

		pin_to_sibling				DashPip1BG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		RIGHT

		zpos				200
	}

	DashPip3BG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar_bg
		scaleImage			1
		drawColor			"0 0 0 192"

		pin_to_sibling				DashPip2BG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		RIGHT

		zpos				200
	}

	DashPip4BG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar_bg
		scaleImage			1
		drawColor			"0 0 0 192"

		pin_to_sibling				DashPip3BG
		pin_corner_to_sibling		LEFT
		pin_to_sibling_corner		RIGHT

		zpos				200
	}

	DashPip0
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				DashPip0BG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM

		zpos				500
	}

	DashPip1
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				DashPip1BG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM

		zpos				500
	}

	DashPip2
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				DashPip2BG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM

		zpos				500
	}

	DashPip3
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				DashPip3BG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM

		zpos				500
	}

	DashPip4
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				45
		tall				18
		visible				1
		image				vgui/HUD/dash_bar
		scaleImage			1
		drawColor			"255 255 255 255"

		pin_to_sibling				DashPip4BG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM

		zpos				500
	}
}
 