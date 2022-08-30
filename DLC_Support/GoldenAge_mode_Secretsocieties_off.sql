--改回原版。。。
--解锁
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_MEDIEVAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_MEDIEVAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_HERMETIC_ORDER_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_MEDIEVAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_VOIDSINGERS_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_MEDIEVAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_INDUSTRIAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_INDUSTRIAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_HERMETIC_ORDER_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_INDUSTRIAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_VOIDSINGERS_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_INDUSTRIAL' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_ATOMIC' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_ATOMIC' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_HERMETIC_ORDER_4';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_ATOMIC' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_VOIDSINGERS_4';
UPDATE GovernorPromotionConditions SET EarliestGameEra = 'ERA_ATOMIC' WHERE GovernorPromotionType = 'GOVERNOR_PROMOTION_SANGUINE_PACT_4';
--吸血鬼
UPDATE Units SET BaseMoves = 2, Combat = 20 WHERE UnitType = 'UNIT_VAMPIRE';
--黄金
UPDATE Adjacency_YieldChanges SET YieldChange = 2 WHERE AdjacentResourceClass = 'RESOURCECLASS_LEY_LINE';
INSERT OR REPLACE INTO ModifierArguments
(ModifierId, Name,    Value) SELECT 
ModifierId,  'Amount', 1 FROM Modifiers WHERE ModifierType='MODIFIER_PLAYER_ADJUST_GREAT_PERSON_RESOURCE_YIELD_CHANGE';
--建筑
UPDATE Buildings SET Maintenance = 0 WHERE BuildingType = 'BUILDING_OLD_GOD_OBELISK';
UPDATE Buildings SET Maintenance = 2, Housing = 1, RegionalRange = 0, Cost = 250, PrereqTech = 'TECH_EDUCATION' WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY';
UPDATE Buildings SET RegionalRange = 0, Cost = 290, PrereqTech = 'TECH_BANKING' WHERE BuildingType = 'BUILDING_GILDED_VAULT';
UPDATE Building_YieldChanges SET YieldChange = 4 WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY' AND YieldType = 'YIELD_PRODUCTION';
UPDATE Building_YieldChanges SET YieldChange = 2 WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY' AND YieldType = 'YIELD_SCIENCE';
UPDATE Building_YieldChanges SET YieldChange = 5 WHERE BuildingType = 'BUILDING_GILDED_VAULT' AND YieldType = 'YIELD_GOLD';

DELETE FROM Buildings_XP2 WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY';
DELETE FROM Buildings_XP2 WHERE BuildingType = 'BUILDING_GILDED_VAULT';
DELETE FROM Building_YieldChangesBonusWithPower WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY';
DELETE FROM Building_YieldChangesBonusWithPower WHERE BuildingType = 'BUILDING_GILDED_VAULT';
DELETE FROM Building_CitizenYieldChanges WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY';
DELETE FROM Building_CitizenYieldChanges WHERE BuildingType = 'BUILDING_GILDED_VAULT';
DELETE FROM BuildingModifiers WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY' AND ModifierId = 'GOLDEN_POPULATION_SCIENCE';
DELETE FROM BuildingModifiers WHERE BuildingType = 'BUILDING_GILDED_VAULT' AND ModifierId = 'GOLDEN_BANK_TRADE_ROUTE_CAPACITY_MODIFIER';
INSERT OR REPLACE INTO BuildingModifiers
(BuildingType, ModifierId) VALUES 
('BUILDING_GILDED_VAULT',  'BUILDING_GILDED_VAULT_TRADE_ROUTE_CAPACITY');
