--v235 平民单位
UPDATE Units SET Cost = 50, CostProgressionParam1 = 75 WHERE UnitType = 'UNIT_SETTLER';
UPDATE Units SET Cost = 50, CostProgressionParam1 = 10 WHERE UnitType = 'UNIT_BUILDER';
UPDATE Units SET Cost = 50, CostProgressionParam1 = 10, CostProgressionModel = 'COST_PROGRESSION_PREVIOUS_COPIES' WHERE UnitType = 'UNIT_TRADER';
UPDATE Units SET Cost = 150, CostProgressionParam1 = 30, CostProgressionModel = 'COST_PROGRESSION_PREVIOUS_COPIES' WHERE UnitType = 'UNIT_MILITARY_ENGINEER';
UPDATE Units SET Cost = 50, CostProgressionParam1 = 10, PrereqCivic = null WHERE UnitType = 'UNIT_MISSIONARY';
UPDATE Units SET Cost = 150, CostProgressionParam1 = 25 WHERE UnitType = 'UNIT_APOSTLE';
UPDATE Units SET Cost = 200, CostProgressionParam1 = 100 WHERE UnitType = 'UNIT_SPY';
UPDATE Units SET Cost = 400, CostProgressionParam1 = 100 WHERE UnitType = 'UNIT_NATURALIST';
UPDATE Units SET Cost = 400, CostProgressionParam1 = 100 WHERE UnitType = 'UNIT_ROCK_BAND';

--传教士回调
INSERT OR REPLACE INTO Unit_BuildingPrereqs (Unit,					PrereqBuilding) VALUES	
('UNIT_MISSIONARY',	'BUILDING_SHRINE');

--视野单位
UPDATE Units SET BaseSightRange= 6 WHERE UnitType = 'UNIT_OBSERVATION_BALLOON';
UPDATE Units SET PrereqTech = 'TECH_COMPUTERS', BaseSightRange= 8 WHERE UnitType = 'UNIT_DRONE';
INSERT OR REPLACE INTO TypeTags (Type,					Tag) VALUES	
('UNIT_OBSERVATION_BALLOON',	'CLASS_REVEAL_STEALTH'),
('UNIT_DRONE',					'CLASS_REVEAL_STEALTH');