// 160x104
vgui_titan_health.res
{
	Background
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				160
		tall				104
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
		wide				160
		tall				104
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
		wide				160
		tall				104
		visible				1
		image				vgui/HUD/titan_screen_fg
		scaleImage			1
		drawColor			"128 128 128 255"

		zpos				1000
	}

	HealthTickBarNum
	{
		ControlName			Label
		xpos				0
		ypos				0
		wide				50
		tall				20
		visible				1
		font				TitanHUD
		labelText			"100%"
		textAlignment		center

		fgcolor_override 	"164 233 108 160"

		zpos				200

		pin_to_sibling				Background
		pin_corner_to_sibling		TOP_RIGHT
		pin_to_sibling_corner		TOP_RIGHT
	}

	HealthBarBackground
	{
		ControlName			Label
		xpos				-13
		ypos				-2
		wide				24
		tall				84
		visible				1
		font				MPScoreBarSmall
		labelText			""
		textAlignment		center
		bgcolor_override	"0 0 0 160"

		zpos				199

		pin_to_sibling				Background
		pin_corner_to_sibling		BOTTOM_RIGHT
		pin_to_sibling_corner		BOTTOM_RIGHT
	}

	HealthBarRecharge
	{
		ControlName			Label
		xpos				0
		ypos				-2
		wide				20
		tall				80
		visible				1
		font				MPScoreBarSmall
		labelText			""
		textAlignment		center
		bgcolor_override	"255 185 0 120"

		zpos				200

		pin_to_sibling				HealthBarBackground
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM
	}

	HealthBar
	{
		ControlName			Label
		xpos				0
		ypos				-2
		wide				20
		tall				80
		visible				1
		font				MPScoreBarSmall
		labelText			""
		textAlignment		center
		bgcolor_override	"82 116 54 255"

		zpos				201

		pin_to_sibling				HealthBarBackground
		pin_corner_to_sibling		BOTTOM
		pin_to_sibling_corner		BOTTOM
	}

	HitConfirmBG
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_generic
		scaleImage			1
		drawColor			"96 96 96 96"

		zpos				200
	}

	HitConfirmHead
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_head
		scaleImage			1
		drawColor			"128 128 128 128"

		zpos				201
	}

	HitConfirmBody
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_body
		scaleImage			1
		drawColor			"128 128 128 128"

		zpos				201
	}

	HitConfirmArmLeft
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_arm_left
		scaleImage			1
		drawColor			"128 128 128 128"

		zpos				201
	}

	HitConfirmArmRight
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_arm_right
		scaleImage			1
		drawColor			"128 128 128 128"

		zpos				201
	}

	HitConfirmLegLeft
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_leg_left
		scaleImage			1
		drawColor			"128 128 128 128"

		zpos				201
	}

	HitConfirmLegRight
	{
		ControlName			ImagePanel
		xpos				0
		ypos				0
		wide				104
		tall				104
		visible				1
		image				vgui/HUD/hit_confirm_leg_right
		scaleImage			1
		drawColor			"128 128 128 128"

		zpos				201
	}

}
 