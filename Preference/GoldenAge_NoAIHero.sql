--Credit to Only Human Hero by muyyi

INSERT OR REPLACE INTO Types
(Type,							Kind)	VALUES
('BUILDING_HERO_MONUMENT',		'KIND_BUILDING');

INSERT OR REPLACE INTO Buildings
(BuildingType,								Name,											Description,		PrereqTech,					PrereqCivic,		Cost,		PrereqDistrict,					PurChaseYield,			Maintenance,	CitizenSlots,	RegionalRange, AdvisorType)		VALUES
('BUILDING_HERO_MONUMENT',					'LOC_BUILDING_HERO_MONUMENT_NAME',				NULL,				'TECH_FUTURE_TECH',			NULL,				99999,		'DISTRICT_CITY_CENTER',			'YIELD_GOLD',			1,				0,				0,				'ADVISOR_CULTURE');

INSERT OR REPLACE INTO Modifiers 
(ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('ONLY_HUMAN_CAN_GET_HERO', 			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 				0, 0, 'PLAYER_IS_HUMAN'),
('ONLY_HUMAN_CAN_GET_HERO_MODIFIER', 	'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE', 	1, 0, NULL);

INSERT OR REPLACE INTO ModifierArguments
(ModifierId, Name, Value) VALUES	
('ONLY_HUMAN_CAN_GET_HERO', 			'ModifierId', 	'ONLY_HUMAN_CAN_GET_HERO_MODIFIER'),
('ONLY_HUMAN_CAN_GET_HERO_MODIFIER', 	'BuildingType', 'BUILDING_HERO_MONUMENT');

INSERT OR REPLACE INTO TraitModifiers
(TraitType, ModifierId) VALUES 
('TRAIT_LEADER_MAJOR_CIV', 'ONLY_HUMAN_CAN_GET_HERO');

INSERT OR REPLACE INTO Projects_XP2
(ProjectType, RequiredBuilding)
SELECT ProjectType, 'BUILDING_HERO_MONUMENT'
FROM Projects WHERE ProjectType LIKE 'PROJECT_CREATE_HERO_%';
