--Credit to 'Resource Cultivation' by Zegangani.
ExposedMembers.ResourceCultivation = {};
local NONE = -1;
local GameLoaded = false;

function WriteMyCustomData(TableStringKey, TableValue)
    ExposedMembers.ResourceCultivation.WriteMyCustomData(TableStringKey, TableValue)
end

function ReadMyCustomData(TableStringKey)
    return ExposedMembers.ResourceCultivation.ReadMyCustomData(TableStringKey)
end

function RefreshResourceAmountProperty(PlayerID)
	local pPlayer = Players[PlayerID];
	local iNumCities = pPlayer:GetCities():GetCount()
	local pPlayerCities = pPlayer:GetCities()
	local iCityRadius = 4
	local tResourceAmount = {}
	local tAllCitiesResourceProperties = "AllPlayer"..tostring(PlayerID).."CitiesResourseProperties"
	local tAllCitiesResourceProperties = {}
	local PlayerTableStringKey = 'Player'..tostring(PlayerID)..'AllResources';
	local PlayerDataTable = ReadMyCustomData(PlayerTableStringKey);
	local CivilizationTypeName = PlayerConfigurations[PlayerID]:GetCivilizationTypeName()
	print("####################################################################################################");
	print("====================================================================================================");
	print("#####******************# PlayerID: "..PlayerID.." , CivilizationName: "..CivilizationTypeName.." #******************#####")
	print("====================================================================================================");		
	if GameLoaded then
		if pPlayer:IsMajor() then
			for k, pCity in pPlayerCities:Members() do
				if pCity ~= nil then
					local iCityID =  pCity:GetID();
					local iCityOwner = pCity:GetOwner()
					local iCityX, iCityY = pCity:GetX(), pCity:GetY()
					for dx = (iCityRadius * -1), iCityRadius do
						for dy = (iCityRadius * -1), iCityRadius do
							local pPlot = Map.GetPlotXYWithRangeCheck(iCityX, iCityY, dx, dy, iCityRadius);
							if pPlot and (pPlot:GetOwner() == iCityOwner) and (pCity == Cities.GetPlotPurchaseCity(pPlot:GetIndex())) then
								local pPlotResourceType = pPlot:GetResourceType();
								if pPlotResourceType ~= -1 then
									local Resource = GameInfo.Resources[pPlotResourceType]
									local ResourceType = GameInfo.Resources[pPlotResourceType].ResourceType
									for row in GameInfo.GA_Resource_Cultivation() do
										local fg_ResourceType = row.ResourceType;
										if ResourceType == fg_ResourceType then
											--local PlayerDataTable = PlayerDataTable[tResourceAmount][ResourceType];
											if row.ResourceClassType == 'RESOURCECLASS_LUXURY' then
												if (tResourceAmount[ResourceType] ~= nil) then 
													tResourceAmount[ResourceType] = tResourceAmount[ResourceType] +1
												else 
													tResourceAmount[ResourceType] = 1
												end
											end
										end
									end
									-- if ResourceType == 'RESOURCE_HORSES' then 
										-- if (tResourceAmount[ResourceType] ~= nil) then 
											-- tResourceAmount[ResourceType] = tResourceAmount[ResourceType] +1
										-- else 
											-- tResourceAmount[ResourceType] = 1
										-- end
									-- end
								end
							end	
						end
					end
				end
			end
			
			for k, pCity in pPlayerCities:Members() do
				if pCity ~= nil then
					local iCityID =  pCity:GetID();
					local iCityOwner = pCity:GetOwner()
					local iCityX, iCityY = pCity:GetX(), pCity:GetY()
					local tCityResources = {}
					local tCityResourceProperties = {}
					local iCityPlot = Map.GetPlot(pCity:GetX(), pCity:GetY());
					print ("City with Id: "..iCityID.." is getting Resource Properties assigned/refreshed")
					for dx = (iCityRadius * -1), iCityRadius do
						for dy = (iCityRadius * -1), iCityRadius do
							local pPlot = Map.GetPlotXYWithRangeCheck(iCityX, iCityY, dx, dy, iCityRadius);
							if pPlot and (pPlot:GetOwner() == iCityOwner) and (pCity == Cities.GetPlotPurchaseCity(pPlot:GetIndex())) then
								local pPlotResourceType = pPlot:GetResourceType();
								if pPlotResourceType ~= -1 then
									local Resource = GameInfo.Resources[pPlotResourceType]
									local ResourceType = GameInfo.Resources[pPlotResourceType].ResourceType
									for row in GameInfo.GA_Resource_Cultivation() do
										local fg_ResourceType = row.ResourceType;
										if ResourceType == fg_ResourceType then
											if row.ResourceClassType == 'RESOURCECLASS_LUXURY' then
												if (tCityResources[ResourceType] ~= nil) then 
													tCityResources[ResourceType] = tCityResources[ResourceType] + 1
												else 
													tCityResources[ResourceType] = 1
												end
											end
										end
									end
									-- if ResourceType == 'RESOURCE_HORSES' then 
										-- if (tCityResources[ResourceType] ~= nil) then 
											-- tCityResources[ResourceType] = tCityResources[ResourceType] + 1
										-- else 
											-- tCityResources[ResourceType] = 1
										-- end
									-- end
								end
							end	
						end
					end
				
					local iCityTableName = 'tCity'..tostring(iCityID)..'Resources';
					for row in GameInfo.Resources() do
						local ResourceType = row.ResourceType;
						local ResourceStringOnly = string.gsub(ResourceType, "RESOURCE_", "");
						local ResourceName = Locale.Lookup(row.Name);
						local iCityResourcePropertyName = 'City'..tostring(iCityID)..tostring(ResourceName)..'Property';
						if row.ResourceClassType == 'RESOURCECLASS_LUXURY' then
							for resource in GameInfo.GA_Resource_Cultivation() do
								if ResourceType == resource.ResourceType then
									if (tResourceAmount[ResourceType] ~= nil) and (tResourceAmount[ResourceType] <= 3) and (tCityResources[ResourceType] ~= nil) and (tCityResources[ResourceType] <= 2) then
										if (PlayerDataTable == nil) then
											iCityPlot:SetProperty("GA_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 1)
											tCityResourceProperties[iCityResourcePropertyName] = 1
										elseif (PlayerDataTable[1][iCityTableName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
											iCityPlot:SetProperty("GA_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 1)
											tCityResourceProperties[iCityResourcePropertyName] = 1
										else
											tCityResourceProperties[iCityResourcePropertyName] = 1
										end
									else
										if (PlayerDataTable == nil) then
											iCityPlot:SetProperty("GA_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 0)
											tCityResourceProperties[iCityResourcePropertyName] = 0
										elseif (PlayerDataTable[1][iCityTableName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
											iCityPlot:SetProperty("GA_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 0)
											tCityResourceProperties[iCityResourcePropertyName] = 0
										elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] ~= nil) and (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
											tCityResourceProperties[iCityResourcePropertyName] = 0
										end
									end
								end
							end
						end
						-- if ResourceType == 'RESOURCE_HORSES' then
							-- local CivilizationTypeName = PlayerConfigurations[PlayerID]:GetCivilizationTypeName()
							-- if (tResourceAmount[ResourceType] ~= nil) and (tResourceAmount[ResourceType] <= 5) and (tCityResources[ResourceType] == nil) then
								-- if (PlayerDataTable == nil) then
									-- iCityPlot:SetProperty("GA_PLAYER_HORSES_MAX_AMOUNT", 1)
									-- tCityResourceProperties[iCityResourcePropertyName] = 1
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
									-- iCityPlot:SetProperty("GA_PLAYER_HORSES_MAX_AMOUNT", 1)
									-- tCityResourceProperties[iCityResourcePropertyName] = 1
								-- else
									-- tCityResourceProperties[iCityResourcePropertyName] = 1
								-- end
							-- else
								-- if (PlayerDataTable == nil) then
									-- iCityPlot:SetProperty("GA_PLAYER_HORSES_MAX_AMOUNT", 0)
									-- tCityResourceProperties[iCityResourcePropertyName] = 0
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 1) then
									-- iCityPlot:SetProperty("GA_PLAYER_HORSES_MAX_AMOUNT", 0)
									-- tCityResourceProperties[iCityResourcePropertyName] = 0
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] ~= nil) and (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
									-- tCityResourceProperties[iCityResourcePropertyName] = 0
								-- end
							-- end
							-- if ((CivilizationTypeName  == 'CIVILIZATION_SCYTHIA') or (CivilizationTypeName  == 'CIVILIZATION_MONGOLIA')) and (tCityResources[ResourceType] == nil) then
								-- if (PlayerDataTable == nil) then
									-- iCityPlot:SetProperty("GA_HORSES_CIV_ONE_PER_CITY", 1)
									-- tCityResourceProperties[iCityResourcePropertyName] = 1
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
									-- iCityPlot:SetProperty("GA_HORSES_CIV_ONE_PER_CITY", 1)
									-- tCityResourceProperties[iCityResourcePropertyName] = 1
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] ~= nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 1) then
									-- tCityResourceProperties[iCityResourcePropertyName] = 1
								-- end
							-- else
								-- if (PlayerDataTable == nil) then
									-- iCityPlot:SetProperty("GA_HORSES_CIV_ONE_PER_CITY", 0)
									-- tCityResourceProperties[iCityResourcePropertyName] = 0
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 1) then
									-- iCityPlot:SetProperty("GA_HORSES_CIV_ONE_PER_CITY", 0)
									-- tCityResourceProperties[iCityResourcePropertyName] = 0
								-- elseif (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] ~= nil) and (PlayerDataTable[1][iCityTableName][iCityResourcePropertyName] == 0) then
									-- tCityResourceProperties[iCityResourcePropertyName] = 0
								-- end
							-- end
						-- end
					end
					-- for row in GameInfo.Resources() do
						-- local ResourceType = row.ResourceType;
						-- local ResourceStringOnly = string.gsub(ResourceType, "RESOURCE_", "");
						-- local ResourceName = Locale.Lookup(row.Name);
						-- local iAllianceCityResourcePropertyName = 'AllianceCity'..tostring(iCityID)..tostring(ResourceName)..'Property';
						-- if row.ResourceClassType == 'RESOURCECLASS_LUXURY' then
							-- for resource in GameInfo.GA_Resource_Cultivation() do
								-- if ResourceType == resource.ResourceType then
									-- if tResourceAmount[ResourceType] == nil then
										-- if (PlayerDataTable == nil) then
											-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 1)
											-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 1
										-- elseif (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == 0) then
											-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 1)
											-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 1
										-- else
											-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 1
										-- end
									-- else
										-- if (PlayerDataTable == nil) then
											-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 0)
											-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 0
										-- elseif (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == 1) then
											-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 0)
											-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 0
										-- elseif (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] ~= nil) and (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == 0) then
											-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 0
										-- end
									-- end
								-- end
							-- end
						-- end
						-- if ResourceType == 'RESOURCE_HORSES' then
							-- if tResourceAmount[ResourceType] == nil then
								-- if (PlayerDataTable == nil) then
									-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 1)
									-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 1
								-- elseif (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == 0) then
									-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_HORSES_MAX_AMOUNT", 1)
									-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 1
								-- else
									-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 1
								-- end
							-- else
								-- if (PlayerDataTable == nil) then
									-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_"..ResourceStringOnly.."_MAX_AMOUNT", 0)
									-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 0
								-- elseif (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == nil) or (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == 1) then
									-- iCityPlot:SetProperty("GA_ALLIANCE_PLAYER_HORSES_MAX_AMOUNT", 0)
									-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 0
								-- elseif (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] ~= nil) and (PlayerDataTable[1][iCityTableName][iAllianceCityResourcePropertyName] == 0) then
									-- tCityResourceProperties[iAllianceCityResourcePropertyName] = 0
								-- end
							-- end
						-- end
					-- end
					tAllCitiesResourceProperties[iCityTableName] = tCityResourceProperties
				end
			end
			local tPlayerAllResourcesData = {tAllCitiesResourceProperties}
			if iNumCities >= 1 then
				WriteMyCustomData(PlayerTableStringKey, tPlayerAllResourcesData)
			end
			print("####################################################################################################");
		end
	end
end

function OnResourcePlantedOrBreeded(locationX, locationY, eImprovementType, eImprovementOwnerID, resource, isPillaged, isWorked)
	local pPlayer = Players[eImprovementOwnerID];
	local plot = Map.GetPlot(locationX,locationY);
	local pResourceImprovement = GameInfo.Improvements[eImprovementType];
	local pResourceImprovementType = GameInfo.Improvements[eImprovementType].ImprovementType;
	if pResourceImprovement ~=nil then
		PlantOrBreed(pResourceImprovement,plot);
		for row in GameInfo.GA_Resource_Cultivation() do
			local pValidResourceImprovement = row.ImprovementType;
			local pValidBuildImprovement = row.ValidImprovementType;
			if pResourceImprovementType == pValidResourceImprovement then
				ImprovementBuilder.SetImprovementType(plot, GameInfo.Improvements[pValidBuildImprovement].Index, plot:GetOwner());
			end
		end
	end
	if pPlayer ~= nil and eImprovementOwnerID ~= nil  then
		RefreshResourceAmountProperty(eImprovementOwnerID);
	end
end

function PlantOrBreed(pResourceImprovement,plot)
	local found_transplant_type = false;
	local transplant_types = {};
	table.insert(transplant_types,'RESOURCE');
	for i in string.gmatch(pResourceImprovement.ImprovementType, "[^_]+") do
		if i == 'CULTIVATE' then 
			found_transplant_type = true;
		elseif found_transplant_type then
			table.insert(transplant_types,i);
		end
	end
	if found_transplant_type then
		local transplant_resource_type = table.concat(transplant_types,'_');
		ResourceBuilder.SetResourceType(plot, GameInfo.Resources[transplant_resource_type].Index, 1);	
		ImprovementBuilder.SetImprovementType(plot, NONE, NONE);
	end
end

function PlotRefreshResourceAmountProperty(iX, iY)
	local pPlot = Map.GetPlot(iX,iY);
	if pPlot:IsOwned() then
		local PlotOwnerID = pPlot:GetOwner();
		RefreshResourceAmountProperty(PlotOwnerID);
	end
end

function ActivateFarmerGardenerModScript()
	GameLoaded = true;
end

Events.LoadScreenClose.Add(ActivateFarmerGardenerModScript)
Events.ImprovementAddedToMap.Add(OnResourcePlantedOrBreeded);
-- Events.AllianceAvailable.Add(RefreshResourceAmountProperty);
-- Events.AllianceEnded.Add(RefreshResourceAmountProperty);
Events.CapitalCityChanged.Add(RefreshResourceAmountProperty);
Events.CityAddedToMap.Add(RefreshResourceAmountProperty);
GameEvents.CityBuilt.Add(RefreshResourceAmountProperty);
GameEvents.CityConquered.Add(RefreshResourceAmountProperty);
--Events.CityInitialized.Add(RefreshResourceAmountProperty);
Events.CityLiberated.Add(RefreshResourceAmountProperty);
Events.CityMadePurchase.Add(RefreshResourceAmountProperty);
Events.CityOccupationChanged.Add(RefreshResourceAmountProperty);
Events.CityRemovedFromMap.Add(RefreshResourceAmountProperty);
Events.CityTileOwnershipChanged.Add(RefreshResourceAmountProperty);
Events.CityTransfered.Add(RefreshResourceAmountProperty);
Events.DistrictAddedToMap.Add(RefreshResourceAmountProperty);
Events.DistrictRemovedFromMap.Add(RefreshResourceAmountProperty);
Events.ImprovementAddedToMap.Add(PlotRefreshResourceAmountProperty);
Events.ImprovementRemovedFromMap.Add(PlotRefreshResourceAmountProperty);
GameEvents.OnDistrictConstructed.Add(RefreshResourceAmountProperty);
Events.PlayerDefeat.Add(RefreshResourceAmountProperty);
--Events.PlayerResourceChanged.Add(RefreshResourceAmountProperty);
Events.PlayerTurnActivated.Add(RefreshResourceAmountProperty);
Events.PlayerTurnDeactivated.Add(RefreshResourceAmountProperty);
GameEvents.PlayerTurnStarted.Add(RefreshResourceAmountProperty);
--Events.PlotPropertyChanged.Add(PlotRefreshResourceAmountProperty);
Events.ResourceAddedToMap.Add(PlotRefreshResourceAmountProperty);
Events.ResourceRemovedFromMap.Add(PlotRefreshResourceAmountProperty);
Events.UnitChargesChanged.Add(RefreshResourceAmountProperty);
--Events.UnitSelectionChanged.Add(RefreshResourceAmountProperty);

print("Gameplay Script loaded.");