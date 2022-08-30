CREATE TABLE Farmer_Gardener_Resources(
	ResourceType varchar(100),
	ImprovementType varchar(100) null,
	OriginalMod varchar(100) null,
	TraitType varchar(100) null,
	AnimalResource varchar(100) NOT NULL DEFAULT 0
);

----------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Farmer_Gardener_Resources(ResourceType, OriginalMod, TraitType, AnimalResource)
VALUES
	--Base Game Plant based resources
	('RESOURCE_RICE', 		NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	('RESOURCE_WHEAT', 		NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	('RESOURCE_BANANAS', 	NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	('RESOURCE_MAIZE', 		NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	
	('RESOURCE_CITRUS', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_COCOA', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_COFFEE', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_COTTON', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_DYES', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_INCENSE', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0), 
	('RESOURCE_SILK', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_SPICES', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_SUGAR', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_TEA', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_TOBACCO', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_WINE', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_OLIVES', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	--Base Game Domestic Animal Resources
	('RESOURCE_CATTLE', 	NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	('RESOURCE_SHEEP', 		NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	('RESOURCE_DEER', 		NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),

	('RESOURCE_FURS', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_IVORY', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_TRUFFLES', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_HONEY', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	--Water Resources
	('RESOURCE_CRABS', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_FISH', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_WHALES', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_PEARLS', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_TURTLES',	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	--Mine Resources
	('RESOURCE_COPPER', 	NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	('RESOURCE_STONE', 		NULL, 'TRAIT_BONUS_RESOURCE_CULTIVATION', 0),
	
	('RESOURCE_DIAMONDS', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_GYPSUM', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_JADE', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_MARBLE', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_MERCURY', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_SALT', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_SILVER', 	NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0),
	('RESOURCE_AMBER', 		NULL, 'TRAIT_LUXURY_RESOURCE_CULTIVATION', 0);

	
UPDATE Farmer_Gardener_Resources SET ImprovementType =  'IMPROVEMENT_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') WHERE AnimalResource =  0;

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
(Tag,Language,Text)
SELECT 
'LOC_' || fg.ImprovementType || '_NAME' AS Tag,
lt.Language,
'种植/圈养/挖掘 '|| ''|| lt.Text ||'' AS Text
FROM Farmer_Gardener_Resources AS fg
JOIN LocalizedText AS lt ON Tag = 'LOC_' ||fg.ResourceType||'_NAME'
WHERE lt.Language = 'zh_Hans_CN' AND fg.AnimalResource = 0;

INSERT OR REPLACE INTO LocalizedText
(Tag,Language,Text)
SELECT 
'LOC_' || fg.ImprovementType || '_NAME' AS Tag,
lt.Language,
'Plant/Breed/Mine '|| ''|| lt.Text ||'' AS Text
FROM Farmer_Gardener_Resources AS fg
JOIN LocalizedText AS lt ON Tag = 'LOC_' ||fg.ResourceType||'_NAME'
WHERE lt.Language = 'en_US' AND fg.AnimalResource = 0;
---------------------------------------------------------------------------------------------------------------
--Bonus Ressources
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
(Tag,Language,Text)
SELECT 
'LOC_' || fg.ImprovementType || '_DESCRIPTION' AS Tag,
lt.Language,
'解锁建造者在有效单元格上放置并改良'|| lt.Text ||'的能力。[NEWLINE][NEWLINE]如果您已经改进了此资源，则可以在您的区域中的任何地方生产。' as Text
FROM Farmer_Gardener_Resources fg
JOIN LocalizedText AS lt ON Tag = 'LOC_' ||fg.ResourceType||'_NAME'
WHERE TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' AND lt.Language = 'zh_Hans_CN';

INSERT OR REPLACE INTO LocalizedText
(Tag,Language,Text)
SELECT 
'LOC_' || fg.ImprovementType || '_DESCRIPTION' AS Tag,
lt.Language,
'Unlocks the Builder Ability to produce '|| lt.Text ||' on a valid Tile.[NEWLINE][NEWLINE]Can be produced everywhere in your Territory, if you have already improved this Resource.' as Text
FROM Farmer_Gardener_Resources fg
JOIN LocalizedText AS lt ON Tag = 'LOC_' ||fg.ResourceType||'_NAME'
WHERE TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' AND lt.Language = 'en_US';
---------------------------------------------------------------------------------------------------------------
--Luxury Resources
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
(Tag,Language,Text)
SELECT 
'LOC_' || fg.ImprovementType || '_DESCRIPTION' AS Tag,
lt.Language,
'解锁建造者在有效单元格上放置并改良'|| lt.Text ||'的能力。[NEWLINE][NEWLINE]可以在其领土内已有该资源的任何城市中建造（如果玩家已经改善了该资源）。只能在拥有少于3种该资源的城市中建造，并且您的帝国中其总数量少于4。' as Text
FROM Farmer_Gardener_Resources fg
JOIN LocalizedText AS lt ON Tag = 'LOC_' ||fg.ResourceType||'_NAME'
WHERE TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' AND lt.Language = 'zh_Hans_CN';

INSERT OR REPLACE INTO LocalizedText
(Tag,Language,Text)
SELECT 
'LOC_' || fg.ImprovementType || '_DESCRIPTION' AS Tag,
lt.Language,
'Unlocks the Builder Ability to produce '|| lt.Text ||' on a valid Tile.[NEWLINE][NEWLINE]Can be constructed in any City that has this Resource already in its Territorry (if the Player has improved this Resource). Can only be constructed in a City that has less than 3 items of this Resource and the Total amount of it in your Empire is less than 4.' as Text
FROM Farmer_Gardener_Resources fg
JOIN LocalizedText AS lt ON Tag = 'LOC_' ||fg.ResourceType||'_NAME'
WHERE TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' AND lt.Language = 'en_US';

---------------------------------------------------------------------------------------------------------------
--Unit
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Tag,Language,Text)
VALUES	('LOC_UNIT_FARMER_NAME', 'zh_Hans_CN', '农民'),
		('LOC_UNIT_HERDMAN_NAME', 'zh_Hans_CN', '牧人'),
		('LOC_UNIT_FISHER_NAME', 'zh_Hans_CN', '渔夫'),
		('LOC_UNIT_MINER_NAME', 'zh_Hans_CN', '矿工'),
		('LOC_UNIT_FARMER_DESCRIPTION', 'zh_Hans_CN', '可以在您的领土上放置并改良一种已经被你改良过的一种植物资源。只能用 [ICON_GOLD] 金币购买。'),
		('LOC_UNIT_HERDMAN_DESCRIPTION', 'zh_Hans_CN', '可以在您的领土上放置并改良一种已经被你改良过的一种动物资源。只能用 [ICON_GOLD] 金币购买。'),
		('LOC_UNIT_FISHER_DESCRIPTION', 'zh_Hans_CN', '可以在您的领土上放置并改良一种已经被你改良过的一种海洋资源。只能用 [ICON_GOLD] 金币购买。'),
		('LOC_UNIT_MINER_DESCRIPTION', 'zh_Hans_CN', '可以在您的领土上放置并改良一种已经被你改良过的一种矿产资源。只能用 [ICON_GOLD] 金币购买。');
		
INSERT OR REPLACE INTO LocalizedText
		(Tag,Language,Text)
VALUES	('LOC_UNIT_FARMER_NAME', 'en_US', 'Farmer'),
		('LOC_UNIT_HERDMAN_NAME', 'en_US', 'Herdman'),
		('LOC_UNIT_FISHER_NAME', 'en_US', 'Fisher'),
		('LOC_UNIT_MINER_NAME', 'en_US', 'Miner'),
		('LOC_UNIT_FARMER_DESCRIPTION', 'en_US', 'A Builder Unit that can cultivate a plant resource once it has been improved in your Territory. Can only be purchased by [ICON_GOLD] gold.'),
		('LOC_UNIT_HERDMAN_DESCRIPTION', 'en_US', 'A Builder Unit that can cultivate a animal resource once it has been improved in your Territory. Can only be purchased by [ICON_GOLD] gold.'),
		('LOC_UNIT_FISHER_DESCRIPTION', 'en_US', 'A Builder Unit that can cultivate a marine resource once it has been improved in your Territory. Can only be purchased by [ICON_GOLD] gold.'),
		('LOC_UNIT_MINER_DESCRIPTION', 'en_US', 'A Builder Unit that can cultivate a mineral resource once it has been improved in your Territory. Can only be purchased by [ICON_GOLD] gold.');
		
INSERT OR REPLACE INTO LocalizedText
		(Tag,Language,Text)
VALUES	('LOC_CIVIC_CIVIL_ENGINEERING_DESCRIPTION', 'zh_Hans_CN', 	''),
		('LOC_CIVIC_CIVIL_ENGINEERING_DESCRIPTION', 'en_US', 		'');