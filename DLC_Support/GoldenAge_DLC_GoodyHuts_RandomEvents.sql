---------------------------------------------------------------------------------------------------------------
-- GoodyHuts
---------------------------------------------------------------------------------------------------------------
-- INSERT OR REPLACE INTO Types
-- (Type,				        Kind) VALUES	
-- ('METEOR_GOODY_CULTURE',	'KIND_GOODY_HUT'),
-- ('METEOR_GOODY_SCIENCE',	'KIND_GOODY_HUT'),
-- ('METEOR_GOODY_FAITH',	    'KIND_GOODY_HUT'),
-- ('METEOR_GOODY_SURVIVORS',	'KIND_GOODY_HUT'),
-- ('METEOR_GOODY_GOVORNOR',	'KIND_GOODY_HUT'),
-- ('METEOR_GOODY_ENVOY',	    'KIND_GOODY_HUT');

DELETE FROM GoodyHuts WHERE GoodyHutType = 'METEOR_GOODIES';
INSERT OR REPLACE INTO GoodyHuts
(GoodyHutType,				ImprovementType,			Weight,	ShowMoment) VALUES	
('METEOR_GOODY_CULTURE',	'IMPROVEMENT_METEOR_GOODY',	100,	0),
('METEOR_GOODY_SCIENCE',	'IMPROVEMENT_METEOR_GOODY',	100,	0),
('METEOR_GOODY_FAITH',		'IMPROVEMENT_METEOR_GOODY',	100,	0),
('METEOR_GOODY_SURVIVORS',	'IMPROVEMENT_METEOR_GOODY',	100,	0),	
('METEOR_GOODY_GOVORNOR',	'IMPROVEMENT_METEOR_GOODY',	100,	0),
('METEOR_GOODY_ENVOY',	    'IMPROVEMENT_METEOR_GOODY',	100,	0);
---------------------------------------------------------------------------------------------------------------
-- GoodyHutSubTypes
---------------------------------------------------------------------------------------------------------------
DELETE FROM GoodyHutSubTypes WHERE GoodyHut = 'METEOR_GOODIES';
INSERT OR REPLACE INTO GoodyHutSubTypes
(GoodyHut,					SubTypeGoodyHut,			Description,								Weight,	    ModifierID,									Turn,	Relic,	MinOneCity,	RequiresUnit) VALUES	
('METEOR_GOODY_CULTURE',	'METEOR_CIVIC',			    'LOC_METEOR_CIVIC_DESCRIPTION',				100,		'METEOR_GOODY_CULTURE_GRANT_ONE_CIVIC',		0,		0,		0,			0),
('METEOR_GOODY_SCIENCE',	'METEOR_TECH',			    'LOC_METEOR_TECH_DESCRIPTION',				100,		'GOODY_SCIENCE_GRANT_ONE_TECH',				0,		0,		0,			0),
('METEOR_GOODY_FAITH',		'METEOR_RELIC',			    'LOC_METEOR_RELIC_DESCRIPTION',				100,		'GOODY_CULTURE_GRANT_ONE_RELIC',			0,		1,		1,			0),
('METEOR_GOODY_SURVIVORS',	'METEOR_ADD_POP',			'LOC_METEOR_ADD_POP_DESCRIPTION',			100,		'METEOR_GOODY_SURVIVORS_ADD_POPULATION',	0,		0,		1,			0),
('METEOR_GOODY_GOVORNOR',	'METEOR_GOVERNOR_TITLE',	'LOC_METEOR_GOVERNOR_TITLE_DESCRIPTION',	100,		'GOODY_DIPLOMACY_GRANT_GOVERNOR_TITLE',		0,		0,		0,			0),
('METEOR_GOODY_ENVOY',	    'METEOR_ENVOYS',		    'LOC_METEOR_ENVOYS_DESCRIPTION',		    100,		'GOODY_DIPLOMACY_GRANT_ENVOY',			    0,		0,		0,			0);
---------------------------------------------------------------------------------------------------------------
-- GoodyHutSubTypes_XP2
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO GoodyHutSubTypes_XP2
(SubTypeGoodyHut,	CityState,	StrategicResources) VALUES	
('METEOR_ENVOYS',	1,			0);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO Modifiers
(ModifierId,								ModifierType,																			RunOnce,	Permanent) VALUES	
('METEOR_GOODY_CULTURE_GRANT_ONE_CIVIC',	'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC',													1,			1),
('METEOR_GOODY_SURVIVORS_ADD_POPULATION',	'MODIFIER_PLAYER_NEAREST_CITY_ADD_POPULATION',											1,			1);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO ModifierArguments
(ModifierId,								Name,						Value) VALUES	
('METEOR_GOODY_CULTURE_GRANT_ONE_CIVIC',	'Amount',					1),
('METEOR_GOODY_SURVIVORS_ADD_POPULATION',	'Amount',					2);
--------------------------------------------------------------
--RandomEvent_Damages
--------------------------------------------------------------
UPDATE RandomEvent_Damages SET Percentage = 40
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND DamageType = 'IMPROVEMENT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 40
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 20
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET Percentage = 40
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET Percentage = 100, MinHP = 30, MaxHP = 60
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET Percentage = 60
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND DamageType = 'SPREAD';
UPDATE RandomEvent_Damages SET Percentage = 40
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND DamageType = 'IMPROVEMENT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 40
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 20
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET Percentage = 40
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET Percentage = 100, MinHP = 30, MaxHP = 60
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET Percentage = 60
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND DamageType = 'SPREAD';
--------------------------------------------------------------
--RandomEvent_Frequencies
--------------------------------------------------------------
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 3
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND RealismSettingType = 'REALISM_SETTING_MINIMAL';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 6
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND RealismSettingType = 'REALISM_SETTING_LIGHT';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 9
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND RealismSettingType = 'REALISM_SETTING_MODERATE';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 12
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND RealismSettingType = 'REALISM_SETTING_HEAVY';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 15
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE' AND RealismSettingType = 'REALISM_SETTING_HYPERREAL';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 3
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND RealismSettingType = 'REALISM_SETTING_MINIMAL';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 6
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND RealismSettingType = 'REALISM_SETTING_LIGHT';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 9
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND RealismSettingType = 'REALISM_SETTING_MODERATE';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 12
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND RealismSettingType = 'REALISM_SETTING_HEAVY';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 15
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE' AND RealismSettingType = 'REALISM_SETTING_HYPERREAL';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 4
WHERE RandomEventType = 'RANDOM_EVENT_METEOR_SHOWER' AND RealismSettingType = 'REALISM_SETTING_MINIMAL';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 8
WHERE RandomEventType = 'RANDOM_EVENT_METEOR_SHOWER' AND RealismSettingType = 'REALISM_SETTING_LIGHT';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 12
WHERE RandomEventType = 'RANDOM_EVENT_METEOR_SHOWER' AND RealismSettingType = 'REALISM_SETTING_MODERATE';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 16
WHERE RandomEventType = 'RANDOM_EVENT_METEOR_SHOWER' AND RealismSettingType = 'REALISM_SETTING_HEAVY';
UPDATE RandomEvent_Frequencies SET OccurrencesPerGame = 20
WHERE RandomEventType = 'RANDOM_EVENT_METEOR_SHOWER' AND RealismSettingType = 'REALISM_SETTING_HYPERREAL';