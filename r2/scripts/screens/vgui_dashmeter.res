// 207x148
vgui_dashmeter.res
{
	Background
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				207
		tall				148
		visible				1
		image				vgui/HUD/titan_screen_bg
		scaleImage			1
		drawColor			"128 128 128 255"

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

	Foreground
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				207
		tall				148
		visible				1
		image				vgui/HUD/titan_screen_fg
		scaleImage			1
		drawColor			"128 128 128 255"

		zpos				1000
	}

	DashName
	{
		ControlName			Label
		xpos				0
		ypos				-54
		wide				207
		tall				45
		visible				1
		font				CapturePointStatusHUD
		labelText			"DASH"
		textAlignment		center

		fgcolor_override 	"164 233 108 160"

		zpos				200

		pin_to_sibling				Background
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM
	}

	DashPip0BG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				45
		wide				45
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 255"

		pin_to_sibling				Background
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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 255"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 255"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 255"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"0 0 0 255"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"164 233 108 160"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"164 233 108 160"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"164 233 108 160"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"164 233 108 160"

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
		tall				45
		visible				1
		image				vgui/HUD/white
		scaleImage			1
		drawColor			"164 233 108 160"

		pin_to_sibling				DashPip4BG
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM

		zpos				500
	}
} 