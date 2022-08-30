--v232 伟人所需点数
UPDATE Eras SET GreatPersonBaseCost = 60 WHERE EraType = 'ERA_ANCIENT';--null
UPDATE Eras SET GreatPersonBaseCost = 120 WHERE EraType = 'ERA_CLASSICAL';
UPDATE Eras SET GreatPersonBaseCost = 240 WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Eras SET GreatPersonBaseCost = 480 WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Eras SET GreatPersonBaseCost = 840 WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Eras SET GreatPersonBaseCost = 1320 WHERE EraType = 'ERA_MODERN';
UPDATE Eras SET GreatPersonBaseCost = 1920 WHERE EraType = 'ERA_ATOMIC';
UPDATE Eras SET GreatPersonBaseCost = 2640 WHERE EraType = 'ERA_INFORMATION';
UPDATE Eras SET GreatPersonBaseCost = 3500 WHERE EraType = 'ERA_FUTURE';--null

--Scientist大科学家
--宾根的希尔德加德
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionRequiresCompletedDistrictType = "DISTRICT_HOLY_SITE", ActionEffectTextOverride = "LOC_GREATPERSON_HILDEGARD_OF_BINGEN"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_HILDEGARD_OF_BINGEN';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_HILDEGARD_OF_BINGEN';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_HILDEGARD_OF_BINGEN',	       		'GA_HILDEGARD_OF_BINGEN_CULTURE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_HILDEGARD_OF_BINGEN',	       		'GA_HILDEGARD_OF_BINGEN_SCIENCE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_HILDEGARD_OF_BINGEN_CULTURE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS'),
('GA_HILDEGARD_OF_BINGEN_SCIENCE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_HILDEGARD_OF_BINGEN_CULTURE',			'YieldType',	    'YIELD_CULTURE'),
('GA_HILDEGARD_OF_BINGEN_CULTURE',			'Amount',	        2),
('GA_HILDEGARD_OF_BINGEN_SCIENCE',			'YieldType',	    'YIELD_SCIENCE'),
('GA_HILDEGARD_OF_BINGEN_SCIENCE',			'Amount',	        2);

--阿耶波多
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_ARYABHATA"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ARYABHATA';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ARYABHATA';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_ARYABHATA',	       		'GA_ARYABHATA_CULTURE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_ARYABHATA',	       		'GA_ARYABHATA_SCIENCE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_ARYABHATA_CULTURE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS'),
('GA_ARYABHATA_SCIENCE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_ARYABHATA_CULTURE',			'YieldType',	    'YIELD_CULTURE'),
('GA_ARYABHATA_CULTURE',			'Amount',	        2),
('GA_ARYABHATA_SCIENCE',			'YieldType',	    'YIELD_SCIENCE'),
('GA_ARYABHATA_SCIENCE',			'Amount',	        2);

--詹姆斯杨
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionRequiresCompletedDistrictType = "DISTRICT_COMMERCIAL_HUB", ActionEffectTextOverride = "LOC_GREATPERSON_JAMES_YOUNG"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JAMES_YOUNG';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JAMES_YOUNG';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_JAMES_YOUNG',	       		'GA_JAMES_YOUNG_CULTURE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_JAMES_YOUNG',	       		'GA_JAMES_YOUNG_SCIENCE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_JAMES_YOUNG_CULTURE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS'),
('GA_JAMES_YOUNG_SCIENCE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_JAMES_YOUNG_CULTURE',			'YieldType',	    'YIELD_CULTURE'),
('GA_JAMES_YOUNG_CULTURE',			'Amount',	        2),
('GA_JAMES_YOUNG_SCIENCE',			'YieldType',	    'YIELD_SCIENCE'),
('GA_JAMES_YOUNG_SCIENCE',			'Amount',	        2);

--欧几里得
UPDATE GreatPersonIndividuals SET ActionCharges = 3, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_EUCLID"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_EUCLID';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_EUCLID';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_EUCLID',	       		'GA_EUCLID_CAMPUS_ADJACENCY_BONUS',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_EUCLID_CAMPUS_ADJACENCY_BONUS',     			'GOLDEN_MODIFIER_DISTRICT_ADJUST_YIELD_MODIFIER',  1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_EUCLID_CAMPUS_ADJACENCY_BONUS',			'YieldType',	    'YIELD_SCIENCE'),
('GA_EUCLID_CAMPUS_ADJACENCY_BONUS',			'Amount',	        50);

--埃尔文薛定谔
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_ERWIN_SCHRODINGER"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ERWIN_SCHRODINGER';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ERWIN_SCHRODINGER';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_ERWIN_SCHRODINGER',	       		'GA_ERWIN_SCHRODINGER_ATOMIC_TECH_BOOST',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_ERWIN_SCHRODINGER_ATOMIC_TECH_BOOST',     			'MODIFIER_PLAYER_GRANT_ALL_TECHNOLOGY_BOOST_BY_ERA',  1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_ERWIN_SCHRODINGER_ATOMIC_TECH_BOOST',			'StartEraType',	    'ERA_ATOMIC'),
('GA_ERWIN_SCHRODINGER_ATOMIC_TECH_BOOST',			'EndEraType',	    'ERA_ATOMIC');

--卡尔萨根
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_CARL_SAGAN"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_CARL_SAGAN';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_CARL_SAGAN';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_CARL_SAGAN',	       		'GA_CARL_SAGAN_FUTURE_TECH_BOOST',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_CARL_SAGAN_FUTURE_TECH_BOOST',     			'MODIFIER_PLAYER_GRANT_ALL_TECHNOLOGY_BOOST_BY_ERA',  1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_CARL_SAGAN_FUTURE_TECH_BOOST',			'StartEraType',	    'ERA_FUTURE'),
('GA_CARL_SAGAN_FUTURE_TECH_BOOST',			'EndEraType',	    'ERA_FUTURE');

--德米特里门捷列夫
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_DMITRI_MENDELEEV"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_DMITRI_MENDELEEV';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_DMITRI_MENDELEEV';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_DMITRI_MENDELEEV',	       		'GA_DMITRI_MENDELEEV_REFINING',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_DMITRI_MENDELEEV',	       		'GA_DMITRI_MENDELEEV_CHEMISTRY',       'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_DMITRI_MENDELEEV_REFINING',     			'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',  1, 1, NULL),
('GA_DMITRI_MENDELEEV_CHEMISTRY',     			'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',  1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_DMITRI_MENDELEEV_REFINING',			'TechType',	    'TECH_REFINING'),
('GA_DMITRI_MENDELEEV_CHEMISTRY',			'TechType',	    'TECH_CHEMISTRY');

--埃米莉夏特莱
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_EMILIE_DU_CHATELET"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_EMILIE_DU_CHATELET';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_EMILIE_DU_CHATELET';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_EMILIE_DU_CHATELET',	       		'GA_EMILIE_DU_CHATELET_TECH',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_EMILIE_DU_CHATELET',	       		'GA_EMILIE_DU_CHATELET_CIVIC',       'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_EMILIE_DU_CHATELET_TECH',     			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY',  1, 1, NULL),
('GA_EMILIE_DU_CHATELET_CIVIC',     		'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_EMILIE_DU_CHATELET_TECH',			'Amount',	    1),
('GA_EMILIE_DU_CHATELET_CIVIC',			'Amount',	    1);

--伽利略
UPDATE GreatPersonIndividuals SET ActionEffectTextOverride = "LOC_GREATPERSON_GALILEO_GALILEI"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_GALILEO_GALILEI';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_GALILEO_GALILEI';

INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType,					ModifierId, AttachmentTargetType) SELECT	
'GREAT_PERSON_INDIVIDUAL_GALILEO_GALILEI',	'GA_GALILEO_GALILEI_SCIENCE_' ||TerrainType, 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON' 	FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent) SELECT	
'GA_GALILEO_GALILEI_SCIENCE_' ||TerrainType,	'MODIFIER_PLAYER_UNIT_GRANT_ADJACENT_TERRAIN_YIELD', 1, 1 											FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GALILEO_GALILEI_SCIENCE_' ||TerrainType,	'YieldType', 'YIELD_SCIENCE' 																		FROM Terrains WHERE Mountain = 1;		
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GALILEO_GALILEI_SCIENCE_' ||TerrainType,	'TerrainType', TerrainType																			FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value, Type) SELECT	
'GA_GALILEO_GALILEI_SCIENCE_' ||TerrainType,	'Amount', 600, 'ScaleByGameSpeed'																	FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType,					ModifierId, AttachmentTargetType) SELECT	
'GREAT_PERSON_INDIVIDUAL_GALILEO_GALILEI',	'GA_GALILEO_GALILEI_CULTURE_' ||TerrainType, 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON' 	FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent) SELECT	
'GA_GALILEO_GALILEI_CULTURE_' ||TerrainType,	'MODIFIER_PLAYER_UNIT_GRANT_ADJACENT_TERRAIN_YIELD', 1, 1 											FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GALILEO_GALILEI_CULTURE_' ||TerrainType,	'YieldType', 'YIELD_CULTURE' 																		FROM Terrains WHERE Mountain = 1;		
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GALILEO_GALILEI_CULTURE_' ||TerrainType,	'TerrainType', TerrainType																			FROM Terrains WHERE Mountain = 1;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value, Type) SELECT	
'GA_GALILEO_GALILEI_CULTURE_' ||TerrainType,	'Amount', 600, 'ScaleByGameSpeed'																	FROM Terrains WHERE Mountain = 1;	
	
--玛丽利基
UPDATE GreatPersonIndividuals SET ActionEffectTextOverride = "LOC_GREATPERSON_MARY_LEAKEY"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MARY_LEAKEY';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MARY_LEAKEY';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_MARY_LEAKEY',	       		'GA_MARY_LEAKEY_SCIENCE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_MARY_LEAKEY',	       		'GA_MARY_LEAKEY_CULTURE',       	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_MARY_LEAKEY_SCIENCE',     			'MODIFIER_SINGLE_CITY_GRANT_YIELD_PER_GREAT_WORK',  		1, 1, NULL),
('GA_MARY_LEAKEY_CULTURE',     			'MODIFIER_SINGLE_CITY_GRANT_YIELD_PER_GREAT_WORK',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_MARY_LEAKEY_SCIENCE',			'GreatWorkObjectType',	    'GREATWORKOBJECT_ARTIFACT'),
('GA_MARY_LEAKEY_SCIENCE',			'YieldType',	    		'YIELD_SCIENCE'),
('GA_MARY_LEAKEY_CULTURE',			'GreatWorkObjectType',	    'GREATWORKOBJECT_ARTIFACT'),
('GA_MARY_LEAKEY_CULTURE',			'YieldType',	    		'YIELD_CULTURE');
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value, Type) VALUES
('GA_MARY_LEAKEY_SCIENCE',			'Amount',	    	1000, 	'ScaleByGameSpeed'),
('GA_MARY_LEAKEY_CULTURE',			'Amount',	   	 	1000, 	'ScaleByGameSpeed');

--佳纳克伊安马尔
UPDATE GreatPersonIndividuals SET ActionEffectTextOverride = "LOC_GREATPERSON_JANAKI_AMMAL"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JANAKI_AMMAL';
UPDATE ModifierArguments SET Value = 1000
WHERE ModifierId = 'GREATPERSON_ADJACENT_RAINFOREST_SCIENCE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 1000
WHERE ModifierId = 'GOLDEN_JANAKI_AMMAL_JUNGLE_CULTURE' AND Name = 'Amount';

--查尔斯达尔文
UPDATE GreatPersonIndividuals SET ActionEffectTextOverride = "LOC_GREATPERSON_CHARLES_DARWIN"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_CHARLES_DARWIN';
UPDATE ModifierArguments SET Value = 1000
WHERE ModifierId = 'GREATPERSON_ADJACENT_NATURALWONDER_SCIENCE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 1000
WHERE ModifierId = 'GOLDEN_GREATPERSON_ADJACENT_NATURALWONDER_CULTURE' AND Name = 'Amount';

--大工程师
--米利都的伊西多尔
UPDATE GreatPersonIndividuals SET ActionCharges = 1
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ISIDORE_OF_MILETUS';
UPDATE ModifierArguments SET Value = 1000
WHERE ModifierId = 'GREATPERSON_GRANT_PRODUCTION_IN_CITY_MEDIEVAL' AND Name = 'Amount';

--菲利波·布鲁内列斯基
UPDATE GreatPersonIndividuals SET ActionCharges = 1
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_FILIPPO_BRUNELLESCHI';
UPDATE ModifierArguments SET Value = 1500
WHERE ModifierId = 'GREATPERSON_GRANT_PRODUCTION_IN_CITY_RENAISSANCE' AND Name = 'Amount';

--古斯塔夫·埃菲尔
UPDATE GreatPersonIndividuals SET ActionCharges = 1
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_GUSTAVE_EIFFEL';
UPDATE ModifierArguments SET Value = 2000
WHERE ModifierId = 'GREATPERSON_GRANT_PRODUCTION_IN_CITY_INDUSTRIAL' AND Name = 'Amount';

--圣乔治·詹姆斯
UPDATE GreatPersonIndividuals SET ActionEffectTextOverride = "LOC_GREATPERSON_JAMES_OF_ST_GEORGE"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JAMES_OF_ST_GEORGE';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_JAMES_OF_ST_GEORGE',	       		'GA_JAMES_OF_ST_GEORGE_STAR_FORT',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_JAMES_OF_ST_GEORGE_STAR_FORT',     			'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_JAMES_OF_ST_GEORGE_STAR_FORT',			'BuildingType',	    'BUILDING_STAR_FORT');

--毕昇
UPDATE GreatPersonIndividuals SET ActionCharges = 3, ActionEffectTextOverride = "LOC_GREATPERSON_BI_SHENG"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_BI_SHENG';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_BI_SHENG' AND ModifierId = 'GREATPERSON_PRINTINGTECHBOOST';

--爱达·勒芙蕾丝
UPDATE GreatPersonIndividuals SET ActionCharges = 4, ActionEffectTextOverride = "LOC_GREATPERSON_ADA_LOVELACE"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ADA_LOVELACE';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ADA_LOVELACE' AND ModifierId = 'GREATPERSON_COMPUTERSTECHBOOST';

--列奥纳多·达·芬奇
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionEffectTextOverride = "LOC_GREATPERSON_LEONARDO_DA_VINCI"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI',	       		'GA_LEONARDO_DA_VINCI_WORKSHOP',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_LEONARDO_DA_VINCI_WORKSHOP',     			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  		0, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_LEONARDO_DA_VINCI_WORKSHOP',			'BuildingType',	    'BUILDING_WORKSHOP'),
('GA_LEONARDO_DA_VINCI_WORKSHOP',			'Amount',	    	3),
('GA_LEONARDO_DA_VINCI_WORKSHOP',			'YieldType',	    'YIELD_PRODUCTION');

--詹姆斯·瓦特
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionEffectTextOverride = "LOC_GREATPERSON_JAMES_WATT"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JAMES_WATT';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JAMES_WATT';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_JAMES_WATT',	       		'GA_JAMES_WATT_FACTORY',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_JAMES_WATT_FACTORY',     			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  		0, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_JAMES_WATT_FACTORY',			'BuildingType',	    'BUILDING_FACTORY'),
('GA_JAMES_WATT_FACTORY',			'Amount',	    	4),
('GA_JAMES_WATT_FACTORY',			'YieldType',	    'YIELD_PRODUCTION');

--谢尔盖·科罗廖夫
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionEffectTextOverride = "LOC_GREATPERSON_SERGEI_KOROLEV"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_SERGEI_KOROLEV';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_SERGEI_KOROLEV';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_SERGEI_KOROLEV',	       		'GA_SERGEI_KOROLEV_BUILDING_POWER_PLANT',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_SERGEI_KOROLEV',	       		'GA_SERGEI_KOROLEV_BUILDING_COAL_POWER_PLANT',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_SERGEI_KOROLEV',	       		'GA_SERGEI_KOROLEV_BUILDING_FOSSIL_FUEL_POWER_PLANT',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_SERGEI_KOROLEV_BUILDING_POWER_PLANT',     				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  		0, 1, NULL),
('GA_SERGEI_KOROLEV_BUILDING_COAL_POWER_PLANT',     		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  		0, 1, NULL),
('GA_SERGEI_KOROLEV_BUILDING_FOSSIL_FUEL_POWER_PLANT',     	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  		0, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_SERGEI_KOROLEV_BUILDING_POWER_PLANT',				'BuildingType',	    'BUILDING_POWER_PLANT'),
('GA_SERGEI_KOROLEV_BUILDING_POWER_PLANT',				'Amount',	    	5),
('GA_SERGEI_KOROLEV_BUILDING_POWER_PLANT',				'YieldType',	    'YIELD_PRODUCTION'),
('GA_SERGEI_KOROLEV_BUILDING_COAL_POWER_PLANT',			'BuildingType',	    'BUILDING_COAL_POWER_PLANT'),
('GA_SERGEI_KOROLEV_BUILDING_COAL_POWER_PLANT',			'Amount',	    	5),
('GA_SERGEI_KOROLEV_BUILDING_COAL_POWER_PLANT',			'YieldType',	    'YIELD_PRODUCTION'),
('GA_SERGEI_KOROLEV_BUILDING_FOSSIL_FUEL_POWER_PLANT',	'BuildingType',	    'BUILDING_FOSSIL_FUEL_POWER_PLANT'),
('GA_SERGEI_KOROLEV_BUILDING_FOSSIL_FUEL_POWER_PLANT',	'Amount',	    	5),
('GA_SERGEI_KOROLEV_BUILDING_FOSSIL_FUEL_POWER_PLANT',	'YieldType',	    'YIELD_PRODUCTION');

--尼古拉·特斯拉
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_INDUSTRIAL_ZONE", ActionEffectTextOverride = "LOC_GREATPERSON_NIKOLA_TESLA"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_NIKOLA_TESLA';
-- DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_NIKOLA_TESLA';
-- INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
-- ('GREAT_PERSON_INDIVIDUAL_NIKOLA_TESLA',	       		'GA_NIKOLA_TESLA_RANGE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
-- ('GREAT_PERSON_INDIVIDUAL_NIKOLA_TESLA',	       		'GA_NIKOLA_TESLA_YIELD',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
-- INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
-- ('GA_NIKOLA_TESLA_RANGE',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_RANGE',  		1, 1, NULL),
-- ('GA_NIKOLA_TESLA_YIELD',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_YIELD',  		1, 1, NULL);
-- INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
-- ('GA_NIKOLA_TESLA_RANGE',			'Amount',	    	3),
-- ('GA_NIKOLA_TESLA_YIELD',			'Amount',	    	2),
-- ('GA_NIKOLA_TESLA_YIELD',			'YieldType',	    'YIELD_PRODUCTION');

--罗伯特·哥达德
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_ROBERT_GODDARD"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ROBERT_GODDARD';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ROBERT_GODDARD';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_ROBERT_GODDARD',	       		'GA_ROBERT_GODDARD_RANGE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_ROBERT_GODDARD',	       		'GA_ROBERT_GODDARD_YIELD',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_ROBERT_GODDARD_RANGE',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_RANGE',  		1, 1, NULL),
('GA_ROBERT_GODDARD_YIELD',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_YIELD',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_ROBERT_GODDARD_RANGE',			'Amount',	    	3),
('GA_ROBERT_GODDARD_YIELD',			'Amount',	    	2),
('GA_ROBERT_GODDARD_YIELD',			'YieldType',	    'YIELD_SCIENCE');

--阿尔瓦·阿尔托
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_THEATER", ActionEffectTextOverride = "LOC_GREATPERSON_ALVAR_AALTO"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ALVAR_AALTO';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_ALVAR_AALTO';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_ALVAR_AALTO',	       		'GA_ALVAR_AALTO_RANGE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_ALVAR_AALTO',	       		'GA_ALVAR_AALTO_YIELD',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_ALVAR_AALTO_RANGE',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_RANGE',  		1, 1, NULL),
('GA_ALVAR_AALTO_YIELD',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_YIELD',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_ALVAR_AALTO_RANGE',			'Amount',	    	3),
('GA_ALVAR_AALTO_YIELD',			'Amount',	    	2),
('GA_ALVAR_AALTO_YIELD',			'YieldType',	    'YIELD_CULTURE');

--约瑟夫·帕克斯顿
UPDATE GreatPersonIndividuals SET ActionCharges = 1, EraType = "ERA_ATOMIC", ActionEffectTextOverride = "LOC_GREATPERSON_JOSEPH_PAXTON"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JOSEPH_PAXTON';

--米马尔·希南
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionRequiresCompletedDistrictType = "DISTRICT_INDUSTRIAL_ZONE", ActionEffectTextOverride = "LOC_GREATPERSON_MIMAR_SINAN"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MIMAR_SINAN';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MIMAR_SINAN';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_MIMAR_SINAN',	       		'GA_MIMAR_SINAN_CULTURE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_MIMAR_SINAN',	       		'GA_MIMAR_SINAN_SCIENCE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_MIMAR_SINAN_CULTURE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS'),
('GA_MIMAR_SINAN_SCIENCE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_MIMAR_SINAN_CULTURE',			'YieldType',	    'YIELD_CULTURE'),
('GA_MIMAR_SINAN_CULTURE',			'Amount',	        2),
('GA_MIMAR_SINAN_SCIENCE',			'YieldType',	    'YIELD_SCIENCE'),
('GA_MIMAR_SINAN_SCIENCE',			'Amount',	        2);

--简·德鲁
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionEffectTextOverride = "LOC_GREATPERSON_JANE_DREW"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JANE_DREW';
UPDATE ModifierArguments SET Value = 2
WHERE ModifierId = 'GREATPERSON_CITY_AMENITIES_LARGE' AND Name = 'Amount';

--查尔斯·柯里亚
UPDATE GreatPersonIndividuals SET ActionCharges = 2
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_CHARLES_CORREA';

--约翰·罗布尔
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionEffectTextOverride = "LOC_GREATPERSON_JOHN_A_ROEBLING"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JOHN_A_ROEBLING';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JOHN_A_ROEBLING';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_JOHN_A_ROEBLING',	       		'GA_JOHN_A_ROEBLING_FEATURE_TOURISM',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_JOHN_A_ROEBLING_FEATURE_TOURISM',     			'MODIFIER_SINGLE_CITY_ADJUST_TOURISM_PER_FEATURE',  1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_JOHN_A_ROEBLING_FEATURE_TOURISM',			'Amount',	       1);