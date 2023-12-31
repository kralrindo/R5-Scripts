vgui_test_screen.res
{
	Background
	{
		ControlName		MaterialImage
		fieldName		Background
		xpos			0
		ypos			0
		zpos			-2
		wide			1079
		tall			540

		material		"vgui/screens/vgui_bg"
	}

	OwnerReadout
	{
		ControlName		Label
		fieldName		OwnerReadout
		xpos			22
		ypos			45
		wide			540
		tall			76
		autoResize		0
		pinCorner		0
		visible			1
		enabled			1
		tabPosition		0
		labelText		"No Owner"
		textAlignment	center
		dulltext		0
		paintBackground 0
	}

	HealthReadout
	{
		ControlName		Label
		fieldName		HealthReadout
		xpos			540
		ypos			45
		wide			540
		tall			76
		autoResize		0
		pinCorner		0
		visible			1
		enabled			1
		tabPosition		0
		labelText		"Health: 100%"
		textAlignment	center
		dulltext		0
		paintBackground 0
	}

	DismantleButton
	{
		ControlName		MaterialButton
		fieldName		Dismantle
		xpos			175
		ypos			360
		wide			728
		tall			108
		autoResize		0
		pinCorner		0
		visible			1
		enabled			1
		tabPosition		2
		labelText		Dismantle
		textAlignment	center
		dulltext		0
		brighttext		0
		Default			0
		command			Dismantle
		paintborder		0

		enabledImage
		{
			material	"vgui/screens/vgui_button_enabled"
			color 		"255 255 255 255"
		}

		mouseOverImage
		{
			material	"vgui/screens/vgui_button_hover"
			color 		"255 255 255 255"
		}

		pressedImage
		{
			material	"vgui/screens/vgui_button_pushed"
			color 		"255 255 255 255"
		}

		disabledImage
		{
			material	"vgui/screens/vgui_button_disabled"
			color 		"255 255 255 255"
		}
	}
}
 