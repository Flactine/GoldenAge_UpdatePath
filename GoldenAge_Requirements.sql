---------------------------------------------------------
--City founded or captured
---------------------------------------------------------
--RequirementSets
INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId ,     RequirementSetType) 	VALUES
('GOLDEN_CITY_IS_ORIGINAL_OWNER_REQUIREMENTS' , 			'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_CITY_IS_NOT_ORIGINAL_OWNER_REQUIREMENTS' , 			'REQUIREMENTSET_TEST_ALL');
--RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,   RequirementId) 			VALUES
('GOLDEN_CITY_IS_ORIGINAL_OWNER_REQUIREMENTS' , 		  	'GOLDEN_REQUIRES_CITY_IS_ORIGINAL_OWNER'),
('GOLDEN_CITY_IS_NOT_ORIGINAL_OWNER_REQUIREMENTS' , 		'GOLDEN_REQUIRES_CITY_IS_NOT_ORIGINAL_OWNER');
--Requirements
INSERT OR REPLACE INTO 		Requirements (RequirementId,				   RequirementType) VALUES		
('GOLDEN_REQUIRES_CITY_IS_ORIGINAL_OWNER',                      	'REQUIREMENT_CITY_IS_ORIGINAL_OWNER');
INSERT OR REPLACE INTO 		Requirements (RequirementId,				   RequirementType,			             Inverse) VALUES		
('GOLDEN_REQUIRES_CITY_IS_NOT_ORIGINAL_OWNER',                   	'REQUIREMENT_CITY_IS_ORIGINAL_OWNER', 1);

---------------------------------------------------------
--AI + ERA
---------------------------------------------------------
INSERT OR REPLACE INTO RequirementSets (RequirementSetId,							RequirementSetType)
SELECT	'GOLDEN_AI_IS_GAME_ERA_ATLEAST_'|| EraType ||'_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL' FROM Eras;
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId,		RequirementId)
SELECT	 'GOLDEN_AI_IS_GAME_ERA_ATLEAST_'|| EraType ||'_REQUIREMENTS',	'GOLDEN_REQUIRES_AI_IS_GAME_ERA_ATLEAST_' || EraType FROM Eras;
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId,		RequirementId)
SELECT	 'GOLDEN_AI_IS_GAME_ERA_ATLEAST_'|| EraType ||'_REQUIREMENTS',	'REQUIRES_PLAYER_IS_AI' FROM Eras;
INSERT OR REPLACE INTO Requirements (RequirementId,			RequirementType)
SELECT	 'GOLDEN_REQUIRES_AI_IS_GAME_ERA_ATLEAST_' || EraType,	   'REQUIREMENT_GAME_ERA_ATLEAST_EXPANSION' FROM Eras;
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value)
SELECT	 'GOLDEN_REQUIRES_AI_IS_GAME_ERA_ATLEAST_' || EraType,		'EraType',	    EraType FROM Eras;	

---------------------------------------------------------
--Plot fresh water
---------------------------------------------------------
--RequirementSets
INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId ,     RequirementSetType) 	VALUES
('GOLDEN_PLOT_IS_FRESH_WATER_REQUIREMENTS' , 				'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_PLOT_IS_NOT_FRESH_WATER_REQUIREMENTS' , 			'REQUIREMENTSET_TEST_ALL');
--RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,   RequirementId) 			VALUES
('GOLDEN_PLOT_IS_FRESH_WATER_REQUIREMENTS' , 		  	'GOLDEN_REQUIRES_PLOT_IS_FRESH_WATER'),
('GOLDEN_PLOT_IS_NOT_FRESH_WATER_REQUIREMENTS' , 		'GOLDEN_REQUIRES_PLOT_IS_NOT_FRESH_WATER');
--Requirements
INSERT OR REPLACE INTO 		Requirements (RequirementId,				   RequirementType) VALUES		
('GOLDEN_REQUIRES_PLOT_IS_FRESH_WATER',                      	'REQUIREMENT_PLOT_IS_FRESH_WATER');
INSERT OR REPLACE INTO 		Requirements (RequirementId,				   RequirementType,			             Inverse) VALUES		
('GOLDEN_REQUIRES_PLOT_IS_NOT_FRESH_WATER',                   	'REQUIREMENT_PLOT_IS_FRESH_WATER', 				1);

---------------------------------------------------------
--Populations
---------------------------------------------------------
--RequirementSets
INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId , RequirementSetType) 	
VALUES 		('GOLDEN_CITY_HAS_FOURTYEIGHT_POPULATION_REQUIREMENTS' , 	'REQUIREMENTSET_TEST_ALL'),
			('GOLDEN_CITY_HAS_SIXTY_POPULATION_REQUIREMENTS' , 			'REQUIREMENTSET_TEST_ALL'),
            ('GOLDEN_CITY_HAS_SEVENTY_POPULATION_REQUIREMENTS' , 		'REQUIREMENTSET_TEST_ALL'),
            ('GOLDEN_CITY_HAS_EIGHTY_POPULATION_REQUIREMENTS' , 		'REQUIREMENTSET_TEST_ALL'),
			('GOLDEN_CITY_HAS_NINETY_POPULATION_REQUIREMENTS' , 		'REQUIREMENTSET_TEST_ALL'),
			('GOLDEN_CITY_HAS_HUNDRED_POPULATION_REQUIREMENTS' , 		'REQUIREMENTSET_TEST_ALL');
--RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId , RequirementId) 			
VALUES 		('GOLDEN_CITY_HAS_FOURTYEIGHT_POPULATION_REQUIREMENTS' , 	'GOLDEN_REQUIRES_CITY_HAS_FOURTYEIGHT_POPULATION'),
			('GOLDEN_CITY_HAS_SIXTY_POPULATION_REQUIREMENTS' , 			'GOLDEN_REQUIRES_CITY_HAS_SIXTY_POPULATION'),
            ('GOLDEN_CITY_HAS_SEVENTY_POPULATION_REQUIREMENTS' , 		'GOLDEN_REQUIRES_CITY_HAS_SEVENTY_POPULATION'),
            ('GOLDEN_CITY_HAS_EIGHTY_POPULATION_REQUIREMENTS' , 		'GOLDEN_REQUIRES_CITY_HAS_EIGHTY_POPULATION'),
			('GOLDEN_CITY_HAS_NINETY_POPULATION_REQUIREMENTS' , 		'GOLDEN_REQUIRES_CITY_HAS_NINETY_POPULATION'),
			('GOLDEN_CITY_HAS_HUNDRED_POPULATION_REQUIREMENTS' , 		'GOLDEN_REQUIRES_CITY_HAS_HUNDRED_POPULATION');			
--Requirements
INSERT OR REPLACE INTO 		Requirements (RequirementId,							RequirementType)
VALUES						('GOLDEN_REQUIRES_CITY_HAS_FOURTYEIGHT_POPULATION',	'REQUIREMENT_CITY_HAS_X_POPULATION'),
							('GOLDEN_REQUIRES_CITY_HAS_SIXTY_POPULATION',			'REQUIREMENT_CITY_HAS_X_POPULATION'),
                            ('GOLDEN_REQUIRES_CITY_HAS_SEVENTY_POPULATION',			'REQUIREMENT_CITY_HAS_X_POPULATION'),
							('GOLDEN_REQUIRES_CITY_HAS_EIGHTY_POPULATION',			'REQUIREMENT_CITY_HAS_X_POPULATION'),
							('GOLDEN_REQUIRES_CITY_HAS_NINETY_POPULATION',			'REQUIREMENT_CITY_HAS_X_POPULATION'),
							('GOLDEN_REQUIRES_CITY_HAS_HUNDRED_POPULATION',			'REQUIREMENT_CITY_HAS_X_POPULATION');		
--RequirementArguments		
INSERT OR REPLACE INTO 		RequirementArguments (RequirementId,				Name,			Value)
VALUES						('GOLDEN_REQUIRES_CITY_HAS_FOURTYEIGHT_POPULATION','Amount',		48),
							('GOLDEN_REQUIRES_CITY_HAS_SIXTY_POPULATION',		'Amount',		60),
                            ('GOLDEN_REQUIRES_CITY_HAS_SEVENTY_POPULATION',		'Amount',		70),
							('GOLDEN_REQUIRES_CITY_HAS_EIGHTY_POPULATION',		'Amount',		80),
							('GOLDEN_REQUIRES_CITY_HAS_NINETY_POPULATION',		'Amount',		90),
							('GOLDEN_REQUIRES_CITY_HAS_HUNDRED_POPULATION',		'Amount',		100);	
							
---------------------------------------------------------
--Coast
---------------------------------------------------------							
--RequirementSets
INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId , RequirementSetType) 	VALUES 		
('GA_PLOT_ADJACENT_TO_COAST_REQUIREMENTS' , 		        	'REQUIREMENTSET_TEST_ALL'),
('GA_PLOT_NOT_ADJACENT_TO_COAST_REQUIREMENTS' , 		       	'REQUIREMENTSET_TEST_ALL');

--RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId , RequirementId) 			VALUES 		
('GA_PLOT_ADJACENT_TO_COAST_REQUIREMENTS' , 		'GA_REQUIRES_PLOT_ADJACENT_TO_COAST'),
('GA_PLOT_NOT_ADJACENT_TO_COAST_REQUIREMENTS' , 	'GA_REQUIRES_PLOT_NOT_ADJACENT_TO_COAST');

--Requirements	
INSERT OR REPLACE INTO 	Requirements (RequirementId,				        RequirementType,			             Inverse) VALUES
('GA_REQUIRES_PLOT_ADJACENT_TO_COAST',		        'REQUIREMENT_PLOT_ADJACENT_TO_COAST',    0),
('GA_REQUIRES_PLOT_NOT_ADJACENT_TO_COAST',		    'REQUIREMENT_PLOT_ADJACENT_TO_COAST',    1);

---------------------------------------------------------
--Player Has Building
---------------------------------------------------------	
-- RequirementSets
INSERT OR REPLACE INTO RequirementSets (RequirementSetId,							RequirementSetType)
SELECT	'GOLDEN_PLAYER_HAS_'|| BuildingType ||'_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL' FROM Buildings WHERE Cost<>0;
-- RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements (RequirementSetId,		RequirementId)
SELECT	 'GOLDEN_PLAYER_HAS_'|| BuildingType ||'_REQUIREMENTS',	'GOLDEN_REQUIRES_PLAYER_HAS_' || BuildingType FROM Buildings WHERE Cost<>0;
-- Requirements
INSERT OR REPLACE INTO Requirements (RequirementId,			RequirementType)
SELECT	 'GOLDEN_REQUIRES_PLAYER_HAS_' || BuildingType,	   'REQUIREMENT_PLAYER_HAS_BUILDING' FROM Buildings WHERE Cost<>0;
-- RequirementArguments
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value)
SELECT	 'GOLDEN_REQUIRES_PLAYER_HAS_' || BuildingType,		'BuildingType',	    BuildingType FROM Buildings WHERE Cost<>0;	

---------------------------------------------------------
--Building expansion
---------------------------------------------------------	
--商业中心T1-3
INSERT OR REPLACE INTO RequirementSets (RequirementSetId,						RequirementSetType) VALUES	
('GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T1_BUILDING_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
('GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T2_BUILDING_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY'),
('GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T3_BUILDING_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			VALUES 		
('GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T1_BUILDING_REQUIREMENTS' , 		    'GOLDEN_REQUIRES_CITY_HAS_BUILDING_MARKET'),
('GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T2_BUILDING_REQUIREMENTS' , 		    'GOLDEN_REQUIRES_CITY_HAS_BUILDING_BANK'),
('GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T3_BUILDING_REQUIREMENTS' , 		    'GOLDEN_REQUIRES_CITY_HAS_BUILDING_STOCK_EXCHANGE');

---------------------------------------------------------
--Features & Tarrains
---------------------------------------------------------
--RequirementSets
INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId ,     RequirementSetType) 	
VALUES 		
			('GA_PLOT_HAS_ANY_FLOODPLAINS_REQUIREMENTS' , 			    'REQUIREMENTSET_TEST_ANY');
--RequirementSetRequirements
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,   RequirementId) 			
VALUES 		
			('GA_PLOT_HAS_ANY_FLOODPLAINS_REQUIREMENTS' , 			  'GA_REQUIRES_PLOT_HAS_FLOODPLAINS_GRASSLAND'),
			('GA_PLOT_HAS_ANY_FLOODPLAINS_REQUIREMENTS' , 			  'GA_REQUIRES_PLOT_HAS_FLOODPLAINS_PLAINS'),
			('GA_PLOT_HAS_ANY_FLOODPLAINS_REQUIREMENTS' , 			  'GA_REQUIRES_PLOT_HAS_FLOODPLAINS');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,   RequirementId) 			
SELECT 		'GA_PLOT_HAS_ANY_FLOODPLAINS_REQUIREMENTS' , 			  'GA_REQUIRES_PLOT_HAS_FLOODPLAINS_TUNDRA' WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_FLOODPLAINS_TUNDRA');			
--Requirements			
INSERT OR REPLACE INTO 		Requirements (RequirementId,				            RequirementType)
VALUES						('GA_REQUIRES_PLOT_HAS_FLOODPLAINS_GRASSLAND',		'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'),
                            ('GA_REQUIRES_PLOT_HAS_FLOODPLAINS_PLAINS',			'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'),
							('GA_REQUIRES_PLOT_HAS_FLOODPLAINS',			    'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES');
INSERT OR REPLACE INTO 		Requirements (RequirementId,				            RequirementType)
SELECT						'GA_REQUIRES_PLOT_HAS_FLOODPLAINS_TUNDRA',		'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES' WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_FLOODPLAINS_TUNDRA');							
--RequirementArguments								
INSERT OR REPLACE INTO 		RequirementArguments (RequirementId,		            Name,			    Value)
VALUES						('GA_REQUIRES_PLOT_HAS_FLOODPLAINS_GRASSLAND',		'FeatureType',		'FEATURE_FLOODPLAINS_GRASSLAND'),	
                            ('GA_REQUIRES_PLOT_HAS_FLOODPLAINS_PLAINS',		    'FeatureType',		'FEATURE_FLOODPLAINS_PLAINS'),							
							('GA_REQUIRES_PLOT_HAS_FLOODPLAINS',    		    'FeatureType',		'FEATURE_FLOODPLAINS');						
INSERT OR REPLACE INTO 		RequirementArguments (RequirementId,		            Name,			    Value)
SELECT						'GA_REQUIRES_PLOT_HAS_FLOODPLAINS_TUNDRA',		'FeatureType',			'FEATURE_FLOODPLAINS_TUNDRA' WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_FLOODPLAINS_TUNDRA');						