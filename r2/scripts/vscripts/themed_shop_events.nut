


global function ThemedShopEvents_Init




global function GetActiveThemedShopEvent
global function ThemedShopEvent_GetChallenges
global function ThemedShopEvent_GetHeaderIcon
global function ThemedShopEvent_HasWhatsNew
global function ThemedShopEvent_GetAssociatedPack
global function ThemedShopEvent_HasThemedShopTab
global function ThemedShopEvent_HasSpecialsTab


















































struct FileStruct_LifetimeLevel
{
	table<ItemFlavor, array<ItemFlavor> > eventChallengesMap
}


FileStruct_LifetimeLevel fileLevel 


















void function ThemedShopEvents_Init()
{





	AddCallback_OnItemFlavorRegistered( eItemType.calevent_themedshop, void function( ItemFlavor ev ) {
		fileLevel.eventChallengesMap[ev] <- RegisterReferencedItemFlavorsFromArray( ev, "challenges", "flavor" )
		foreach ( int challengeSortOrdinal, ItemFlavor challengeFlav in fileLevel.eventChallengesMap[ev] )
			RegisterChallengeSource( challengeFlav, ev, challengeSortOrdinal )
	} )
}











ItemFlavor ornull function GetActiveThemedShopEvent( int t )
{
	Assert( IsItemFlavorRegistrationFinished() )
	ItemFlavor ornull event = null
	foreach ( ItemFlavor ev in GetAllItemFlavorsOfType( eItemType.calevent_themedshop ) )
	{
		if ( !CalEvent_IsActive( ev, t ) )
			continue

		Assert( event == null, format( "Multiple themedshop events are active!! (%s, %s)", string(ItemFlavor_GetAsset( expect ItemFlavor(event) )), string(ItemFlavor_GetAsset( ev )) ) )
		event = ev
	}
	return event
}




array<ItemFlavor> function ThemedShopEvent_GetChallenges( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )

	return fileLevel.eventChallengesMap[event]
}





















































































































































































































bool function ThemedShopEvent_HasWhatsNew( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "whatsNewTab" )
}



asset function ThemedShopEvent_GetAssociatedPack( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "associatedPackFlav" )
}



bool function ThemedShopEvent_HasThemedShopTab( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "themedShopTab" )
}



bool function ThemedShopEvent_HasSpecialsTab( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "specialsTab" )
}





































asset function ThemedShopEvent_GetHeaderIcon( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "headerIcon" )
}








































 n ThemedShopEvent_GetChallenges( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )

	return fileLevel.eventChallengesMap[event]
}




string function ThemedShopEvent_GetTabText( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsString( ItemFlavor_GetAsset( event ), "tabText" )
}




string function ThemedShopEvent_GetGRXOfferLocation( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsString( ItemFlavor_GetAsset( event ), "grxOfferLocation" )
}




vector function ThemedShopEvent_GetTabTextDefaultCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabTextDefaultCol" )
}



vector function ThemedShopEvent_GetTabBGDefaultCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabBGDefaultCol" )
}




vector function ThemedShopEvent_GetTabBarDefaultCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabBarDefaultCol" )
}




vector function ThemedShopEvent_GetTabBGFocusedCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabBGFocusedCol" )
}




vector function ThemedShopEvent_GetTabBarFocusedCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabBarFocusedCol" )
}




vector function ThemedShopEvent_GetTabBGSelectedCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabBGSelectedCol" )
}




vector function ThemedShopEvent_GetTabBarSelectedCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabBarSelectedCol" )
}



vector function ThemedShopEvent_GetTabTextSelectedCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabTextSelectedCol" )
}



vector function ThemedShopEvent_GetTabGlowFocusedCol( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "tabGlowFocusedCol" )
}



asset function ThemedShopEvent_GetTabLeftSideImage( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "leftSideImage" )
}



asset function ThemedShopEvent_GetTabCenterImage( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "centerImage" )
}



asset function ThemedShopEvent_GetTabRightSideImage( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "rightSideImage" )
}




float function ThemedShopEvent_GetTabImageSelectedAlpha( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsFloat( ItemFlavor_GetAsset( event ), "imageSelectedAlpha" )
}



float function ThemedShopEvent_GetTabImageUnselectedAlpha( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsFloat( ItemFlavor_GetAsset( event ), "imageUnselectedAlpha" )
}



asset function ThemedShopEvent_GetTabCenterRui( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsStringAsAsset( ItemFlavor_GetAsset( event ), "centerRuiAsset" )
}



asset function ThemedShopEvent_GetItemButtonBGImage( ItemFlavor event, bool isHighlighted )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), isHighlighted ? "itemBtnHighlightedBGImage" : "itemBtnRegularBGImage" )
}




asset function ThemedShopEvent_GetItemGroupHeaderImage( ItemFlavor event, int group )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "itemGroup" + string( group ) + "HeaderImage" )
}




string function ThemedShopEvent_GetItemGroupHeaderText( ItemFlavor event, int group )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsString( ItemFlavor_GetAsset( event ), "itemGroup" + string( group ) + "HeaderText" )
}



array<string> function ThemedShopEvent_GetAboutText( ItemFlavor event, bool restricted )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )

	array<string> aboutText = []
	string key = (restricted ? "aboutTextRestricted" : "aboutTextStandard")
	foreach ( var aboutBlock in IterateSettingsAssetArray( ItemFlavor_GetAsset( event ), key ) )
		aboutText.append( GetSettingsBlockString( aboutBlock, "text" ) )
	return aboutText
}



vector function ThemedShopEvent_GetItemGroupHeaderTextColor( ItemFlavor event, int group )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "itemGroup" + string( group ) + "HeaderTextColor" )
}




asset function ThemedShopEvent_GetItemGroupBackgroundImage( ItemFlavor event, int group )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "itemGroup" + string( group ) + "BGImage" )
}




bool function ThemedShopEvent_HasLobbyTheme( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "themeLobby" )
}



bool function ThemedShopEvent_HasWhatsNew( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "whatsNewTab" )
}



asset function ThemedShopEvent_GetAssociatedPack( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "associatedPackFlav" )
}



bool function ThemedShopEvent_HasThemedShopTab( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "themedShopTab" )
}



bool function ThemedShopEvent_HasSpecialsTab( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsBool( ItemFlavor_GetAsset( event ), "specialsTab" )
}



asset function ThemedShopEvent_GetLobbyButtonImage( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "lobbyButtonImage" )
}




vector function ThemedShopEvent_GetTitleTextColor( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "seasonTitleColor" )
}




vector function ThemedShopEvent_GetSubtitleTextColor( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "seasonSubtitleColor" )
}



vector function ThemedShopEvent_GetAboutPageSpecialTextColor( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsVector( ItemFlavor_GetAsset( event ), "aboutPageSpecialTextColor" )
}



asset function ThemedShopEvent_GetHeaderIcon( ItemFlavor event )
{
	Assert( ItemFlavor_GetType( event ) == eItemType.calevent_themedshop )
	return GetGlobalSettingsAsset( ItemFlavor_GetAsset( event ), "headerIcon" )
}



GRXScriptOffer ornull function ThemedShopEvent_GetPackOffer( ItemFlavor event )
{
	if ( GRX_IsOfferRestricted() )
		return null

	ItemFlavor packFlav          = GetItemFlavorByAsset( ThemedShopEvent_GetAssociatedPack( event ) )
	string offerLocation         = ThemedShopEvent_GetGRXOfferLocation( event )
	array<GRXScriptOffer> offers = GRX_GetItemDedicatedStoreOffers( packFlav, offerLocation )
	foreach( GRXScriptOffer offer in offers )
	{
		if ( offer.output.flavors.len() > 1 )
			continue
		if ( GRXOffer_ContainsEventThematicPack( offer ) )
			return offer
	}
	return null
}




















 