global function ShPlayerPet_Init
global function PlayerPetsEnabled







const int DICE_MAX_INT = 21

struct
{
	int 			petType













} file


void function ShPlayerPet_Init()
{
	if ( !PlayerPetsEnabled() )
		return

	string petType = GetCurrentPlaylistVarString( "squad_pet_type", "shadow_prowler" )
	switch( petType )
	{
		case "shadow_prowler":
			file.petType = eNPC.DIRE_PROWLER

				AddCreateCallback( "npc_prowler", OnPetCreatedClient )

			break
		case "prowler":
			file.petType = eNPC.PROWLER

				AddCreateCallback( "npc_prowler", OnPetCreatedClient )

			break
		default:
			Assert( false, "Unhandled playlist var 'squad_pet_type': " + petType )
	}


















}



bool function PlayerPetsEnabled()
{
	return GetCurrentPlaylistVarBool( "squad_pets_enabled", false )
}













































































































































































































































































































































































































































void function OnPetCreatedClient( entity pet )
{
	thread function() : ( pet )
	{
		if ( !IsValid( pet ) )
			return

		pet.EndSignal( "OnDeath" )
		entity petOwner = pet.GetBossPlayer()
		float timeOutFrames
		while( !IsValid( petOwner ) || timeOutFrames > 1000 )
		{
			WaitFrame()
			if ( !IsAlive( pet ) )
				return
			petOwner = pet.GetBossPlayer()
		}

		vector infoColor
		if ( IsValid( petOwner ) )
			infoColor = GetPlayerInfoColor( petOwner )
		else
			infoColor = <255, 255, 255>

		SetCustomPlayerInfoColor( pet, infoColor )

	}()

}
















































































































































































































































































































































































































































































































































 