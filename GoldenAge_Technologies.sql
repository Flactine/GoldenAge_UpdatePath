UPDATE Technologies SET  Description="LOC_TECH_CASTLES_DESCRIPTION" 
WHERE TechnologyType="TECH_CASTLES";

UPDATE Technologies SET  Description="LOC_TECH_EDUCATION_DESCRIPTION" 
WHERE TechnologyType="TECH_EDUCATION";

UPDATE Technologies SET  Description="LOC_TECH_SIEGE_TACTICS_DESCRIPTION" 
WHERE TechnologyType="TECH_SIEGE_TACTICS";

--TechnologyPrereqs
INSERT OR REPLACE INTO TechnologyPrereqs
(Technology , 				PrereqTech) VALUES
("TECH_MASONRY" , 			"TECH_BRONZE_WORKING" ),
("TECH_FLIGHT" , 			"TECH_SANITATION" ),
("TECH_ADVANCED_FLIGHT" , 	"TECH_ELECTRICITY" );

--Technologies_XP2
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_FUTURE_TECH";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_SEASTEADS";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_ADVANCED_AI";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_ADVANCED_POWER_CELLS";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_CYBERNETICS";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_SMART_MATERIALS";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_PREDICTIVE_SYSTEMS";
UPDATE Technologies_XP2 SET  RandomPrereqs=0, HiddenUntilPrereqComplete=0 WHERE TechnologyType="TECH_OFFWORLD_MISSION";

--BOOST
DELETE FROM Boosts WHERE TechnologyType="TECH_SCIENTIFIC_THEORY";

INSERT OR REPLACE INTO Boosts   
(TechnologyType , 				Boost , TriggerDescription , 						TriggerLongDescription , 								BoostClass ,					Unit1Type) VALUES
("TECH_SCIENTIFIC_THEORY" , 	30 , 	"LOC_BOOST_TRIGGER_SCIENTIFIC_THEORY" , 	"LOC_BOOST_TRIGGER_LONGDESC_SCIENTIFIC_THEORY" , 		"BOOST_TRIGGER_TRAIN_UNIT" ,	"UNIT_GREAT_SCIENTIST");

--商业中心建筑
DELETE FROM Boosts WHERE TechnologyType="TECH_BANKING";
DELETE FROM Boosts WHERE TechnologyType="TECH_ECONOMICS";

INSERT OR REPLACE INTO Boosts   --MODIFIER 触发（不可能达成）
(TechnologyType , 		Boost , TriggerDescription , TriggerLongDescription , BoostClass , BuildingType , NumItems) VALUES
("TECH_BANKING" , 		40 , "LOC_BOOST_TRIGGER_BANKING" , 	 "LOC_BOOST_TRIGGER_LONGDESC_BANKING" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 ),
("TECH_ECONOMICS" , 	40 , "LOC_BOOST_TRIGGER_ECONOMICS" , "LOC_BOOST_TRIGGER_LONGDESC_ECONOMICS" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 );

INSERT OR REPLACE INTO TraitModifiers (TraitType,					ModifierId) VALUES	
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_BANKING_BOOST'),
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_ECONOMICS_BOOST');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,							ModifierType,											SubjectRequirementSetId) VALUES
('GA_TECH_BANKING_BOOST',	            'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T1_BUILDINGS_REQUIREMENTS'),
('GA_TECH_ECONOMICS_BOOST',	            'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T2_BUILDINGS_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							Name,		    Value) VALUES
('GA_TECH_BANKING_BOOST',	            'TechType',   'TECH_BANKING'),
('GA_TECH_ECONOMICS_BOOST',	            'TechType',   'TECH_ECONOMICS');
INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId ,     RequirementSetType) 	VALUES 		
('GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T1_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T2_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			VALUES 		
('GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_MARKET'),
('GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T2_BUILDINGS_REQUIREMENTS' , 				'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_BANK');

INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_MINT' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_MINT');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_POST_STATION' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_POST_STATION');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T2_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_COMMERCIAL' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_COMMERCIAL');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_COMMERCIAL_T2_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_TAX_BUREAU' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TAX_BUREAU');

INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_MINT' , 		    	 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_MINT');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_POST_STATION' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_POST_STATION');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_COMMERCIAL' , 		     'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_COMMERCIAL');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_TAX_BUREAU' , 		     'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TAX_BUREAU');

INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_MINT',		'BuildingType',	    'BUILDING_MINT' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_MINT');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_POST_STATION',		'BuildingType',	    'BUILDING_POST_STATION' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_POST_STATION');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_COMMERCIAL',		'BuildingType',	    'BUILDING_COMMERCIAL' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_COMMERCIAL');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_TAX_BUREAU',		'BuildingType',	    'BUILDING_TAX_BUREAU' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TAX_BUREAU');

--剧院广场建筑
DELETE FROM Boosts WHERE TechnologyType="TECH_PRINTING";
DELETE FROM Boosts WHERE TechnologyType="TECH_RADIO";
DELETE FROM Boosts WHERE TechnologyType="TECH_SATELLITES";

INSERT OR REPLACE INTO Boosts   --MODIFIER 触发（不可能达成）
(TechnologyType , 		Boost , TriggerDescription , TriggerLongDescription , BoostClass , BuildingType , NumItems) VALUES
("TECH_PRINTING" , 		40 , "LOC_BOOST_TRIGGER_PRINTING" , 	"LOC_BOOST_TRIGGER_LONGDESC_PRINTING" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 ),
("TECH_RADIO" , 		40 , "LOC_BOOST_TRIGGER_RADIO" , 		"LOC_BOOST_TRIGGER_LONGDESC_RADIO" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 ),
("TECH_SATELLITES" , 	40 , "LOC_BOOST_TRIGGER_SATELLITES" , 	"LOC_BOOST_TRIGGER_LONGDESC_SATELLITES" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 );

INSERT OR REPLACE INTO TraitModifiers (TraitType,					ModifierId) VALUES	
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_PRINTING_BOOST'),
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_RADIO_BOOST'),
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_SATELLITES_BOOST');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,							ModifierType,											SubjectRequirementSetId) VALUES
('GA_TECH_PRINTING_BOOST',	            'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_THEATER_T1_BUILDINGS_REQUIREMENTS'),
('GA_TECH_RADIO_BOOST',	            	'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_THEATER_T2_BUILDINGS_REQUIREMENTS'),
('GA_TECH_SATELLITES_BOOST',	        'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_THEATER_T3_BUILDINGS_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							Name,		    Value) VALUES
('GA_TECH_PRINTING_BOOST',	            'TechType',   'TECH_PRINTING'),
('GA_TECH_RADIO_BOOST',	            	'TechType',   'TECH_RADIO'),
('GA_TECH_SATELLITES_BOOST',	        'TechType',   'TECH_SATELLITES');

INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId ,     RequirementSetType) 	VALUES 		
('GOLDEN_PLAYER_HAS_ALL_THEATER_T1_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_PLAYER_HAS_ALL_THEATER_T2_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_PLAYER_HAS_ALL_THEATER_T3_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			VALUES 		
('GOLDEN_PLAYER_HAS_ALL_THEATER_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_AMPHITHEATER'),
('GOLDEN_PLAYER_HAS_ALL_THEATER_T2_BUILDINGS_REQUIREMENTS' , 				'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_MUSEUM_ART'),
('GOLDEN_PLAYER_HAS_ALL_THEATER_T2_BUILDINGS_REQUIREMENTS' , 				'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_MUSEUM_ARTIFACT'),
('GOLDEN_PLAYER_HAS_ALL_THEATER_T3_BUILDINGS_REQUIREMENTS' , 				'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_BROADCAST_CENTER');

INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_EPIC_THEATRE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_EPIC_THEATRE');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_TAMPLE_STAGE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TAMPLE_STAGE');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T2_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_THERTERMUSEUM' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_THERTERMUSEUM');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T2_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_LIBRARYMUSEUM' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_LIBRARYMUSEUM');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T3_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_OPERA_HOUSE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_OPERA_HOUSE');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T3_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ART_ASSOCIATION' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ART_ASSOCIATION');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_THEATER_T3_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_PHOTOSTUDIO' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_PHOTOSTUDIO');

INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_EPIC_THEATRE' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_EPIC_THEATRE');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_TAMPLE_STAGE' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TAMPLE_STAGE');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_THERTERMUSEUM' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_THERTERMUSEUM');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_LIBRARYMUSEUM' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_LIBRARYMUSEUM');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_OPERA_HOUSE' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_OPERA_HOUSE');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ART_ASSOCIATION' , 	 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ART_ASSOCIATION');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_PHOTOSTUDIO' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_PHOTOSTUDIO');

INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_EPIC_THEATRE',			'BuildingType',	    'BUILDING_EPIC_THEATRE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_EPIC_THEATRE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_TAMPLE_STAGE',			'BuildingType',	    'BUILDING_TAMPLE_STAGE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TAMPLE_STAGE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_THERTERMUSEUM',		'BuildingType',	    'BUILDING_THERTERMUSEUM' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_THERTERMUSEUM');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_LIBRARYMUSEUM',		'BuildingType',	    'BUILDING_LIBRARYMUSEUM' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_LIBRARYMUSEUM');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_OPERA_HOUSE',			'BuildingType',	    'BUILDING_OPERA_HOUSE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_OPERA_HOUSE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ART_ASSOCIATION',		'BuildingType',	    'BUILDING_ART_ASSOCIATION' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ART_ASSOCIATION');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_PHOTOSTUDIO',			'BuildingType',	    'BUILDING_PHOTOSTUDIO' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_PHOTOSTUDIO');

--学院建筑
DELETE FROM Boosts WHERE TechnologyType="TECH_EDUCATION";
DELETE FROM Boosts WHERE TechnologyType="TECH_SANITATION";
DELETE FROM Boosts WHERE TechnologyType="TECH_ROCKETRY";

INSERT OR REPLACE INTO Boosts   --MODIFIER 触发（不可能达成）
(TechnologyType , 		Boost , TriggerDescription , TriggerLongDescription , BoostClass , BuildingType , NumItems) VALUES
("TECH_EDUCATION" , 		40 , "LOC_BOOST_TRIGGER_EDUCATION" , 	"LOC_BOOST_TRIGGER_LONGDESC_EDUCATION" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 ),
("TECH_SANITATION" , 		40 , "LOC_BOOST_TRIGGER_SANITATION" , 	"LOC_BOOST_TRIGGER_LONGDESC_SANITATION" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 ),
("TECH_ROCKETRY" , 			40 , "LOC_BOOST_TRIGGER_ROCKETRY" , 	"LOC_BOOST_TRIGGER_LONGDESC_ROCKETRY" , 	"BOOST_TRIGGER_HAVE_X_BUILDINGS" , "BUILDING_UNIVERSITY" , 100 );

INSERT OR REPLACE INTO TraitModifiers (TraitType,					ModifierId) VALUES	
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_EDUCATION_BOOST'),
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_SANITATION_BOOST'),
('TRAIT_LEADER_MAJOR_CIV',	'GA_TECH_ROCKETRY_BOOST');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,							ModifierType,											SubjectRequirementSetId) VALUES
('GA_TECH_EDUCATION_BOOST',	            'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T1_BUILDINGS_REQUIREMENTS'),
('GA_TECH_SANITATION_BOOST',	        'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T2_BUILDINGS_REQUIREMENTS'),
('GA_TECH_ROCKETRY_BOOST',	        	'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	        'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T3_BUILDINGS_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							Name,		    Value) VALUES
('GA_TECH_EDUCATION_BOOST',	            'TechType',   'TECH_EDUCATION'),
('GA_TECH_SANITATION_BOOST',	        'TechType',   'TECH_SANITATION'),
('GA_TECH_ROCKETRY_BOOST',	        	'TechType',   'TECH_ROCKETRY');

INSERT OR REPLACE INTO RequirementSets 				(RequirementSetId ,     RequirementSetType) 	VALUES 		
('GOLDEN_PLAYER_HAS_ALL_CAMPUS_T1_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_PLAYER_HAS_ALL_CAMPUS_T2_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL'),
('GOLDEN_PLAYER_HAS_ALL_CAMPUS_T3_BUILDINGS_REQUIREMENTS' , 		    'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			VALUES 		
('GOLDEN_PLAYER_HAS_ALL_CAMPUS_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_LIBRARY'),
('GOLDEN_PLAYER_HAS_ALL_CAMPUS_T2_BUILDINGS_REQUIREMENTS' , 				'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_UNIVERSITY'),
('GOLDEN_PLAYER_HAS_ALL_CAMPUS_T3_BUILDINGS_REQUIREMENTS' , 				'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_RESEARCH_LAB');

INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ALCHEMY_HOUSE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ALCHEMY_HOUSE');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T1_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_OBSERVATORY' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_OBSERVATORY');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T2_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_PUBLIC_SCHOOL' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_PUBLIC_SCHOOL');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T2_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ACADEMIC_EXCHANGE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ACADEMIC_EXCHANGE');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T3_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_BIOLOGY_LAB' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BIOLOGY_LAB');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T3_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ANIMAL_LAB' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ANIMAL_LAB');
INSERT OR REPLACE INTO RequirementSetRequirements 	(RequirementSetId ,     RequirementId) 			SELECT 	
'GOLDEN_PLAYER_HAS_ALL_CAMPUS_T3_BUILDINGS_REQUIREMENTS' , 		    	'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_CHEMISTRY_LAB' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_CHEMISTRY_LAB');

INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ALCHEMY_HOUSE' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ALCHEMY_HOUSE');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_OBSERVATORY' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_OBSERVATORY');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_PUBLIC_SCHOOL' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_PUBLIC_SCHOOL');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ACADEMIC_EXCHANGE' , 	 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ACADEMIC_EXCHANGE');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_BIOLOGY_LAB' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BIOLOGY_LAB');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ANIMAL_LAB' , 	 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ANIMAL_LAB');
INSERT OR REPLACE INTO Requirements 	(RequirementId ,     RequirementType) 			SELECT 	
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_CHEMISTRY_LAB' , 		 'REQUIREMENT_PLAYER_HAS_BUILDING' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_CHEMISTRY_LAB');

INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ALCHEMY_HOUSE',			'BuildingType',	    'BUILDING_ALCHEMY_HOUSE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ALCHEMY_HOUSE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_OBSERVATORY',				'BuildingType',	    'BUILDING_OBSERVATORY' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_OBSERVATORY');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_PUBLIC_SCHOOL',			'BuildingType',	    'BUILDING_PUBLIC_SCHOOL' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_PUBLIC_SCHOOL');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ACADEMIC_EXCHANGE',		'BuildingType',	    'BUILDING_ACADEMIC_EXCHANGE' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ACADEMIC_EXCHANGE');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_BIOLOGY_LAB',				'BuildingType',	    'BUILDING_BIOLOGY_LAB' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BIOLOGY_LAB');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_ANIMAL_LAB',				'BuildingType',	    'BUILDING_ANIMAL_LAB' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ANIMAL_LAB');
INSERT OR REPLACE INTO RequirementArguments (RequirementId,				Name,				Value) SELECT	 
'GOLDEN_REQUIRES_PLAYER_HAS_BUILDING_CHEMISTRY_LAB',			'BuildingType',	    'BUILDING_CHEMISTRY_LAB' WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_CHEMISTRY_LAB');