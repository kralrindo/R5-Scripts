global function MpAbilityMirageUltimate_Init
global function OnWeaponChargeBegin_ability_mirage_ultimate
global function OnWeaponChargeEnd_ability_mirage_ultimate
global function OnWeaponAttemptOffhandSwitch_ability_mirage_ultimate



const int CLOAK_TRIGGER_RADIUS = 240


struct
{

	var cancelHintRui

} file

void function MpAbilityMirageUltimate_Init()
{
	RegisterSignal( "CancelCloak" )
	PrecacheScriptString( CONTROLLED_DECOY_SCRIPTNAME )

	StatusEffect_RegisterEnabledCallback( eStatusEffect.mirage_ultimate_cancel_hint, CancelHint_OnCreate )
	StatusEffect_RegisterDisabledCallback( eStatusEffect.mirage_ultimate_cancel_hint, CancelHint_OnDestroy )

}


void function CancelHint_OnCreate( entity player, int statusEffect, bool actuallyChanged )
{
	if ( player != GetLocalViewPlayer() )
		return

	file.cancelHintRui = CreateFullscreenRui( $"ui/mirage_ultimate_cancel_hint.rpak" )
}

void function CancelHint_OnDestroy( entity player, int statusEffect, bool actuallyChanged )
{
	if ( player != GetLocalViewPlayer() )
		return

	RuiDestroyIfAlive( file.cancelHintRui )
	file.cancelHintRui = null
}


bool function OnWeaponAttemptOffhandSwitch_ability_mirage_ultimate( entity weapon )
{
	entity player = weapon.GetWeaponOwner()
	if ( !IsValid( player ) )
		return false

	if ( !PlayerCanUseDecoy( player ) )
		return false

	return true
}


var function OnWeaponPrimaryAttack_mirage_ultimate( entity weapon, WeaponPrimaryAttackParams attackParams )
{
	var ammoToReturn = OnWeaponPrimaryAttack_holopilot( weapon, attackParams )




	return ammoToReturn
}

void function MirageUltimateCancelCloak( entity player )
{
	player.Signal( "CancelCloak")
}

void function OnWeaponChargeEnd_ability_mirage_ultimate( entity weapon )
{
	entity player = weapon.GetWeaponOwner()
	if ( !IsValid( player ) )
		return






	if ( weapon.GetWeaponChargeFraction() < 1 )
	{
		MirageUltimateCancelCloak( player )
		return
	}

	if ( weapon.GetWeaponPrimaryClipCount() == 0 ) 
		return

	weapon.SetWeaponPrimaryClipCount( 0 )
	if ( ShouldDoKaleidoscopeUltimate() )
	{



	}
	else
	{
		WeaponPrimaryAttackParams attackParams
		OnWeaponPrimaryAttack_mirage_ultimate( weapon, attackParams )
	}
}































































bool function OnWeaponChargeBegin_ability_mirage_ultimate( entity weapon )
{
	weapon.EmitWeaponSound_1p3p( "Mirage_Vanish_Activate_1P", "Mirage_Vanish_Activate_3P" )
	entity ownerPlayer = weapon.GetWeaponOwner()
	PlayerUsedOffhand( ownerPlayer, weapon, true )







	return true
}


bool function ShouldDoKaleidoscopeUltimate()
{
	return GetCurrentPlaylistVarBool( "mirage_kaleidoscope_ulti_enabled", true )
}






























































































































                                       