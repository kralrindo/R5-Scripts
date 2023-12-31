// 1151x1151
vgui_damage_3d.res
{
	HudDamageIndicator
	{
		ControlName				CHudDamageIndicator
		xpos					0
		ypos					0
		wide					1151
		tall					1151

		DamageIndicatorSize		128
		GrenadeIndicatorSize	128
		GrenadeIconSize			64

		GrenadeRadiusScale		1.0
		DamageRadiusScale		1.0

		DamageIndicator			"vgui/damageindicator_3d"
		GrenadeIndicator		"vgui/HUD/grenade_indicator"
		GrenadeIcon				"vgui/HUD/grenade_indicator_3d"

		FadeOutPercentage		0.7
		Noise					0.1		// higher numbers add more randomness to the hit indicator's position
	}
}
 