--V224
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_CAMPUS' AND YieldChangeId='GOLDEN_CAMPUS_SCIENCE';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_THEATER' AND YieldChangeId='GOLDEN_THEATER_CULTURE';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_HOLY_SITE' AND YieldChangeId='GOLDEN_HOLY_SITE_FAITH';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_COMMERCIAL_HUB' AND YieldChangeId='GOLDEN_COMMERCIAL_HUB_GOLD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_INDUSTRIAL_ZONE' AND YieldChangeId='GOLDEN_INDUSTRIAL_ZONE_PRODUCTION';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_HARBOR' AND YieldChangeId='GOLDEN_HARBOR_GOLD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_CAMPUS' AND YieldChangeId='GOLDEN_CAMPUS_SCIENCE_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_THEATER' AND YieldChangeId='GOLDEN_THEATER_CULTURE_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_HOLY_SITE' AND YieldChangeId='GOLDEN_HOLY_SITE_FAITH_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_COMMERCIAL_HUB' AND YieldChangeId='GOLDEN_COMMERCIAL_HUB_GOLD_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_INDUSTRIAL_ZONE' AND YieldChangeId='GOLDEN_INDUSTRIAL_ZONE_PRODUCTION_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_HARBOR' AND YieldChangeId='GOLDEN_HARBOR_GOLD_STANDARD';

INSERT OR REPLACE INTO District_Adjacencies 
(DistrictType,				YieldChangeId) VALUES
('DISTRICT_CAMPUS',          'GA_CAMPUS_SCIENCE'),
('DISTRICT_THEATER',         'GA_THEATER_CULTURE'),
('DISTRICT_HOLY_SITE',       'GA_HOLY_SITE_FAITH'),
('DISTRICT_COMMERCIAL_HUB',  'GA_COMMERCIAL_HUB_GOLD'),
('DISTRICT_INDUSTRIAL_ZONE', 'GA_INDUSTRIAL_ZONE_PRODUCTION'),
('DISTRICT_HARBOR',          'GA_HARBOR_GOLD'),
('DISTRICT_CAMPUS',          'GA_CAMPUS_SCIENCE_STANDARD'),
('DISTRICT_THEATER',         'GA_THEATER_CULTURE_STANDARD'),
('DISTRICT_HOLY_SITE',       'GA_HOLY_SITE_FAITH_STANDARD'),
('DISTRICT_COMMERCIAL_HUB',  'GA_COMMERCIAL_HUB_GOLD_STANDARD'),
('DISTRICT_INDUSTRIAL_ZONE', 'GA_INDUSTRIAL_ZONE_PRODUCTION_STANDARD'),
('DISTRICT_HARBOR',          'GA_HARBOR_GOLD_STANDARD'),
('DISTRICT_CAMPUS',          'GA_CAMPUS_SCIENCE_MEGA'),
('DISTRICT_THEATER',         'GA_THEATER_CULTURE_MEGA'),
('DISTRICT_HOLY_SITE',       'GA_HOLY_SITE_FAITH_MEGA'),
('DISTRICT_COMMERCIAL_HUB',  'GA_COMMERCIAL_HUB_GOLD_MEGA'),
('DISTRICT_INDUSTRIAL_ZONE', 'GA_INDUSTRIAL_ZONE_PRODUCTION_MEGA'),
('DISTRICT_HARBOR',          'GA_HARBOR_GOLD_MEGA');

INSERT OR REPLACE INTO Adjacency_YieldChanges 
(ID,                                             Description,                                YieldType,           YieldChange,  TilesRequired,  AdjacentDistrict) VALUES 
('GA_CAMPUS_SCIENCE_STANDARD',               'LOC_CAMPUS_SCIENCE_STANDARD',              'YIELD_SCIENCE',     1,          	1,            	'DISTRICT_CAMPUS'),
('GA_THEATER_CULTURE_STANDARD',              'LOC_THEATER_CULTURE_STANDARD',             'YIELD_CULTURE',     1,          	1,            	'DISTRICT_THEATER'),
('GA_HOLY_SITE_FAITH_STANDARD',              'LOC_HOLY_SITE_FAITH_STANDARD',             'YIELD_FAITH',       1,          	1,            	'DISTRICT_HOLY_SITE'),
('GA_COMMERCIAL_HUB_GOLD_STANDARD',          'LOC_COMMERCIAL_HUB_GOLD_STANDARD',         'YIELD_GOLD',        1,          	1,            	'DISTRICT_COMMERCIAL_HUB'),
('GA_INDUSTRIAL_ZONE_PRODUCTION_STANDARD',   'LOC_INDUSTRIAL_ZONE_PRODUCTION_STANDARD',  'YIELD_PRODUCTION',  1,          	1,            	'DISTRICT_INDUSTRIAL_ZONE'),
('GA_HARBOR_GOLD_STANDARD',                  'LOC_HARBOR_GOLD_STANDARD',                 'YIELD_GOLD',        1,          	1,            	'DISTRICT_HARBOR');
	
INSERT OR REPLACE INTO Adjacency_YieldChanges 
(ID,                                  		Description,                      		YieldType,          	YieldChange, 	TilesRequired,  AdjacentDistrict,             PrereqCivic) VALUES
('GA_CAMPUS_SCIENCE',             		'LOC_CAMPUS_SCIENCE',             		'YIELD_SCIENCE',    	1,         		1,            	'DISTRICT_CAMPUS',           'CIVIC_CIVIL_SERVICE'),
('GA_THEATER_CULTURE',            		'LOC_THEATER_CULTURE',            		'YIELD_CULTURE',    	1,         		1,            	'DISTRICT_THEATER',          'CIVIC_CIVIL_SERVICE'),
('GA_HOLY_SITE_FAITH',            		'LOC_HOLY_SITE_FAITH',            		'YIELD_FAITH',      	1,         		1,            	'DISTRICT_HOLY_SITE',        'CIVIC_CIVIL_SERVICE'),
('GA_COMMERCIAL_HUB_GOLD',        		'LOC_COMMERCIAL_HUB_GOLD',        		'YIELD_GOLD',       	1,         		1,            	'DISTRICT_COMMERCIAL_HUB',   'CIVIC_CIVIL_SERVICE'),
('GA_INDUSTRIAL_ZONE_PRODUCTION', 		'LOC_INDUSTRIAL_ZONE_PRODUCTION', 		'YIELD_PRODUCTION', 	1,         		1,            	'DISTRICT_INDUSTRIAL_ZONE',  'CIVIC_CIVIL_SERVICE'),
('GA_HARBOR_GOLD',                		'LOC_HARBOR_GOLD',                		'YIELD_GOLD',       	1,         		1,            	'DISTRICT_HARBOR',           'CIVIC_CIVIL_SERVICE'),
('GA_CAMPUS_SCIENCE_MEGA',               'LOC_CAMPUS_SCIENCE_MEGA',              'YIELD_SCIENCE',     	1,          	1,            	'DISTRICT_CAMPUS',           'CIVIC_URBANIZATION'),
('GA_THEATER_CULTURE_MEGA',              'LOC_THEATER_CULTURE_MEGA',             'YIELD_CULTURE',     	1,          	1,            	'DISTRICT_THEATER',          'CIVIC_URBANIZATION'),
('GA_HOLY_SITE_FAITH_MEGA',              'LOC_HOLY_SITE_FAITH_MEGA',             'YIELD_FAITH',       	1,          	1,            	'DISTRICT_HOLY_SITE',        'CIVIC_URBANIZATION'),
('GA_COMMERCIAL_HUB_GOLD_MEGA',          'LOC_COMMERCIAL_HUB_GOLD_MEGA',         'YIELD_GOLD',        	1,          	1,            	'DISTRICT_COMMERCIAL_HUB',   'CIVIC_URBANIZATION'),
('GA_INDUSTRIAL_ZONE_PRODUCTION_MEGA',   'LOC_INDUSTRIAL_ZONE_PRODUCTION_MEGA',  'YIELD_PRODUCTION',  	1,          	1,            	'DISTRICT_INDUSTRIAL_ZONE',  'CIVIC_URBANIZATION'),
('GA_HARBOR_GOLD_MEGA',                  'LOC_HARBOR_GOLD_MEGA',                 'YIELD_GOLD',        	1,          	1,            	'DISTRICT_HARBOR',           'CIVIC_URBANIZATION');

-- Major
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_HANSA' AND YieldChangeId='GOLDEN_HANSA_Production';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_HANSA' AND YieldChangeId='GOLDEN_HANSA_Production_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_ACROPOLIS' AND YieldChangeId='GOLDEN_ACROPOLIS_Culture';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_ACROPOLIS' AND YieldChangeId='GOLDEN_ACROPOLIS_Culture_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_ROYAL_NAVY_DOCKYARD' AND YieldChangeId='GOLDEN_ROYAL_NAVY_DOCKYARD_Gold';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_ROYAL_NAVY_DOCKYARD' AND YieldChangeId='GOLDEN_ROYAL_NAVY_DOCKYARD_Gold_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_COTHON' AND YieldChangeId='GOLDEN_COTHON_Gold';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_COTHON' AND YieldChangeId='GOLDEN_COTHON_Gold_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_SUGUBA' AND YieldChangeId='GOLDEN_SUGUBA_Gold';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_SUGUBA' AND YieldChangeId='GOLDEN_SUGUBA_Gold_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_SEOWON' AND YieldChangeId='GOLDEN_SEOWON_Science';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_SEOWON' AND YieldChangeId='GOLDEN_SEOWON_Science_STANDARD';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_LAVRA' AND YieldChangeId='GOLDEN_LAVRA_Faith';
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_LAVRA' AND YieldChangeId='GOLDEN_LAVRA_Faith_STANDARD';

INSERT OR REPLACE INTO District_Adjacencies 
(DistrictType,						YieldChangeId) VALUES
('DISTRICT_HANSA',					'GA_HANSA_PRODUCTION'),
('DISTRICT_HANSA', 					'GA_HANSA_PRODUCTION_STANDARD'),
('DISTRICT_ACROPOLIS', 				'GA_ACROPOLIS_CULTURE'), 
('DISTRICT_ACROPOLIS', 				'GA_ACROPOLIS_CULTURE_STANDARD'), 
('DISTRICT_ROYAL_NAVY_DOCKYARD', 	'GA_ROYAL_NAVY_DOCKYARD_GOLD'), 
('DISTRICT_ROYAL_NAVY_DOCKYARD', 	'GA_ROYAL_NAVY_DOCKYARD_GOLD_STANDARD'), 
('DISTRICT_COTHON', 				'GA_COTHON_GOLD'),
('DISTRICT_COTHON', 				'GA_COTHON_GOLD_STANDARD'),
('DISTRICT_SUGUBA', 				'GA_SUGUBA_GOLD'),
('DISTRICT_SUGUBA', 				'GA_SUGUBA_GOLD_STANDARD'),
('DISTRICT_SEOWON', 				'GA_SEOWON_SCIENCE'),
('DISTRICT_SEOWON', 				'GA_SEOWON_SCIENCE_STANDARD'),
('DISTRICT_LAVRA', 					'GA_LAVRA_FAITH'),
('DISTRICT_LAVRA', 					'GA_LAVRA_FAITH_STANDARD'),

('DISTRICT_HANSA', 					'GA_HANSA_PRODUCTION_MEGA'),
('DISTRICT_ACROPOLIS', 				'GA_ACROPOLIS_CULTURE_MEGA'), 
('DISTRICT_ROYAL_NAVY_DOCKYARD', 	'GA_ROYAL_NAVY_DOCKYARD_GOLD_MEGA'), 
('DISTRICT_COTHON', 				'GA_COTHON_GOLD_MEGA'),
('DISTRICT_SUGUBA', 				'GA_SUGUBA_GOLD_MEGA'),
('DISTRICT_SEOWON', 				'GA_SEOWON_SCIENCE_MEGA'),
('DISTRICT_LAVRA', 					'GA_LAVRA_FAITH_MEGA');

INSERT OR REPLACE INTO Adjacency_YieldChanges 
(ID,											Description, 								YieldType, 					YieldChange, 	TilesRequired,	AdjacentDistrict) VALUES
('GA_SEOWON_SCIENCE_STANDARD', 				'LOC_CAMPUS_SCIENCE_STANDARD',			 	'YIELD_SCIENCE', 			1, 				1, 			'DISTRICT_SEOWON'),
('GA_ACROPOLIS_CULTURE_STANDARD', 			'LOC_THEATER_CULTURE_STANDARD', 			'YIELD_CULTURE', 			1, 				1, 			'DISTRICT_ACROPOLIS'),
('GA_LAVRA_FAITH_STANDARD', 				'LOC_HOLY_SITE_FAITH_STANDARD', 			'YIELD_FAITH', 				1, 				1, 			'DISTRICT_LAVRA'),
('GA_SUGUBA_GOLD_STANDARD', 				'LOC_COMMERCIAL_HUB_GOLD_STANDARD', 		'YIELD_GOLD', 				1, 				1, 			'DISTRICT_SUGUBA'),
('GA_HANSA_PRODUCTION_STANDARD', 			'LOC_INDUSTRIAL_ZONE_PRODUCTION_STANDARD', 	'YIELD_PRODUCTION', 		1, 				1, 			'DISTRICT_HANSA'),
('GA_ROYAL_NAVY_DOCKYARD_GOLD_STANDARD', 	'LOC_HARBOR_GOLD_STANDARD', 				'YIELD_GOLD', 				1, 				1, 			'DISTRICT_ROYAL_NAVY_DOCKYARD'),
('GA_COTHON_GOLD_STANDARD', 				'LOC_HARBOR_GOLD_STANDARD', 				'YIELD_GOLD', 				1, 				1, 			'DISTRICT_COTHON');

INSERT OR REPLACE INTO Adjacency_YieldChanges 
(ID,										Description, 							YieldType, 					YieldChange, 	TilesRequired,	AdjacentDistrict, 					PrereqCivic) VALUES
('GA_SEOWON_SCIENCE', 					'LOC_CAMPUS_SCIENCE', 					'YIELD_SCIENCE', 			1, 				1, 				'DISTRICT_SEOWON', 					'CIVIC_CIVIL_SERVICE'),
('GA_ACROPOLIS_CULTURE', 				'LOC_THEATER_CULTURE', 					'YIELD_CULTURE', 			1, 				1, 				'DISTRICT_ACROPOLIS', 				'CIVIC_CIVIL_SERVICE'),
('GA_LAVRA_FAITH', 						'LOC_HOLY_SITE_FAITH',					'YIELD_FAITH', 				1, 				1, 				'DISTRICT_LAVRA', 					'CIVIC_CIVIL_SERVICE'),
('GA_SUGUBA_GOLD', 						'LOC_COMMERCIAL_HUB_GOLD', 				'YIELD_GOLD', 				1, 				1, 				'DISTRICT_SUGUBA',					'CIVIC_CIVIL_SERVICE'),
('GA_HANSA_PRODUCTION', 				'LOC_INDUSTRIAL_ZONE_PRODUCTION', 		'YIELD_PRODUCTION', 		1, 				1, 				'DISTRICT_HANSA', 					'CIVIC_CIVIL_SERVICE'),
('GA_ROYAL_NAVY_DOCKYARD_GOLD', 		'LOC_HARBOR_GOLD', 						'YIELD_GOLD', 				1, 				1, 				'DISTRICT_ROYAL_NAVY_DOCKYARD', 	'CIVIC_CIVIL_SERVICE'),
('GA_COTHON_GOLD', 						'LOC_HARBOR_GOLD', 						'YIELD_GOLD', 				1, 				1, 				'DISTRICT_COTHON', 					'CIVIC_CIVIL_SERVICE'),
('GA_SEOWON_SCIENCE_MEGA', 				'LOC_CAMPUS_SCIENCE_MEGA',			 	'YIELD_SCIENCE', 			1, 				1, 				'DISTRICT_SEOWON', 					'CIVIC_URBANIZATION'),
('GA_ACROPOLIS_CULTURE_MEGA', 			'LOC_THEATER_CULTURE_MEGA', 			'YIELD_CULTURE', 			1, 				1, 				'DISTRICT_ACROPOLIS', 				'CIVIC_URBANIZATION'),
('GA_LAVRA_FAITH_MEGA', 				'LOC_HOLY_SITE_FAITH_MEGA', 			'YIELD_FAITH', 				1, 				1, 				'DISTRICT_LAVRA', 					'CIVIC_URBANIZATION'),
('GA_SUGUBA_GOLD_MEGA', 				'LOC_COMMERCIAL_HUB_GOLD_MEGA', 		'YIELD_GOLD', 				1, 				1, 				'DISTRICT_SUGUBA', 					'CIVIC_URBANIZATION'),
('GA_HANSA_PRODUCTION_MEGA', 			'LOC_INDUSTRIAL_ZONE_PRODUCTION_MEGA', 	'YIELD_PRODUCTION', 		1, 				1, 				'DISTRICT_HANSA', 					'CIVIC_URBANIZATION'),
('GA_ROYAL_NAVY_DOCKYARD_GOLD_MEGA', 	'LOC_HARBOR_GOLD_MEGA', 				'YIELD_GOLD', 				1, 				1, 				'DISTRICT_ROYAL_NAVY_DOCKYARD', 	'CIVIC_URBANIZATION'),
('GA_COTHON_GOLD_MEGA', 				'LOC_HARBOR_GOLD_MEGA', 				'YIELD_GOLD', 				1, 				1, 				'DISTRICT_COTHON', 					'CIVIC_URBANIZATION');

--DLC
--CIVILIZATION_MAYA
--DISTRICT_OBSERVATORY
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_OBSERVATORY' AND YieldChangeId='OBSERVATORY_OBSERVATORY' AND EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_OBSERVATORY' AND YieldChangeId='OBSERVATORY_OBSERVATORY_plus' AND EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
INSERT OR REPLACE INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_OBSERVATORY', 'GA_OBSERVATORY_OBSERVATORY' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
INSERT OR REPLACE INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_OBSERVATORY', 'GA_OBSERVATORY_OBSERVATORY_PLUS' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
INSERT OR REPLACE INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_OBSERVATORY', 'GA_OBSERVATORY_OBSERVATORY_MEGA' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
INSERT OR REPLACE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict)
SELECT	'GA_OBSERVATORY_OBSERVATORY', 		'LOC_CAMPUS_SCIENCE_STANDARD', 'YIELD_SCIENCE', 1, 1, 'DISTRICT_OBSERVATORY' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
INSERT OR REPLACE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict, PrereqCivic)
SELECT	'GA_OBSERVATORY_OBSERVATORY_PLUS', 'LOC_CAMPUS_SCIENCE', 'YIELD_SCIENCE', 1, 1, 'DISTRICT_OBSERVATORY', 'CIVIC_CIVIL_SERVICE' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
INSERT OR REPLACE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict, PrereqCivic)
SELECT	'GA_OBSERVATORY_OBSERVATORY_MEGA', 'LOC_CAMPUS_SCIENCE_MEGA', 'YIELD_SCIENCE', 1, 1, 'DISTRICT_OBSERVATORY', 'CIVIC_URBANIZATION' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');

--CIVILIZATION_GAUL
--DISTRICT_OPPIDUM
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_OPPIDUM' AND YieldChangeId='OPPIDUM_OPPIDUM' AND EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
DELETE FROM District_Adjacencies WHERE DistrictType='DISTRICT_OPPIDUM' AND YieldChangeId='OPPIDUM_OPPIDUM_plus' AND EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
INSERT OR REPLACE INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_OPPIDUM', 'GA_OPPIDUM_OPPIDUM' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
INSERT OR REPLACE INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_OPPIDUM', 'GA_OPPIDUM_OPPIDUM_PLUS' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
INSERT OR REPLACE INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_OPPIDUM', 'GA_OPPIDUM_OPPIDUM_MEGA' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
INSERT OR REPLACE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict)
SELECT	'GA_OPPIDUM_OPPIDUM', 		'LOC_INDUSTRIAL_ZONE_PRODUCTION_STANDARD', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_OPPIDUM' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
INSERT OR REPLACE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict, PrereqCivic)
SELECT	'GA_OPPIDUM_OPPIDUM_PLUS', 'LOC_INDUSTRIAL_ZONE_PRODUCTION', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_OPPIDUM', 'CIVIC_CIVIL_SERVICE' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
INSERT OR REPLACE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict, PrereqCivic)
SELECT	'GA_OPPIDUM_OPPIDUM_MEGA', 'LOC_INDUSTRIAL_ZONE_PRODUCTION_MEGA', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_OPPIDUM', 'CIVIC_URBANIZATION' WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');
