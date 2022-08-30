--V230 费用调整
--海军近战单位
UPDATE Units SET Cost = 40
WHERE UnitType = 'UNIT_GALLEY';
UPDATE Units SET Cost = 80
WHERE UnitType = 'UNIT_LEMBOS';
UPDATE Units SET Cost = 160
WHERE UnitType = 'UNIT_COG';
UPDATE Units SET Cost = 280
WHERE UnitType = 'UNIT_CARAVEL';
UPDATE Units SET Cost = 400
WHERE UnitType = 'UNIT_IRONCLAD';
UPDATE Units SET Cost = 600
WHERE UnitType = 'UNIT_TORPEDO_GUNBOAT';
UPDATE Units SET Cost = 800
WHERE UnitType = 'UNIT_DESTROYER';
UPDATE Units SET Cost = 1000
WHERE UnitType = 'UNIT_MISSILE_FRIGATE';
--UU
UPDATE Units SET Cost = 280
WHERE UnitType = 'UNIT_PORTUGUESE_NAU' AND EXISTS (SELECT * FROM Units WHERE UnitType='UNIT_PORTUGUESE_NAU');
--海军远程单位
UPDATE Units SET Cost = 160
WHERE UnitType = 'UNIT_QUADRIREME';
UPDATE Units SET Cost = 280
WHERE UnitType = 'UNIT_GALLEASS';
UPDATE Units SET Cost = 400
WHERE UnitType = 'UNIT_FRIGATE';
UPDATE Units SET Cost = 600
WHERE UnitType = 'UNIT_ARMORED_CRUISER';
UPDATE Units SET Cost = 800
WHERE UnitType = 'UNIT_BATTLESHIP';
UPDATE Units SET Cost = 1000
WHERE UnitType = 'UNIT_BATTLECRUISER';
UPDATE Units SET Cost = 1200
WHERE UnitType = 'UNIT_MISSILE_CRUISER';
--UU
UPDATE Units SET Cost = 160, Combat= 15, RangedCombat = 40, Range = 3, BaseMoves = 2
WHERE UnitType = 'UNIT_BYZANTINE_DROMON' AND EXISTS (SELECT * FROM Units WHERE UnitType='UNIT_BYZANTINE_DROMON');
UPDATE Units SET Cost = 400, Combat= 40, RangedCombat = 60, BaseMoves = 3
WHERE UnitType = 'UNIT_DE_ZEVEN_PROVINCIEN';
UPDATE Units SET Cost = 400, Combat= 40, RangedCombat = 60, BaseMoves = 5
WHERE UnitType = 'UNIT_INDONESIAN_JONG' AND EXISTS (SELECT * FROM Units WHERE UnitType='UNIT_INDONESIAN_JONG');
UPDATE Units SET Cost = 800, Combat= 55, RangedCombat = 85, BaseMoves = 4
WHERE UnitType = 'UNIT_BRAZILIAN_MINAS_GERAES';
--海军突袭单位
UPDATE Units SET Cost = 340, Combat= 50, RangedCombat = 50, BaseMoves = 4
WHERE UnitType = 'UNIT_PRIVATEER';
UPDATE Units SET Cost = 700, Combat= 70, RangedCombat = 70, BaseMoves = 5
WHERE UnitType = 'UNIT_SUBMARINE';
UPDATE Units SET Cost = 1100, Combat= 90, RangedCombat = 90, BaseMoves = 6
WHERE UnitType = 'UNIT_NUCLEAR_SUBMARINE';
--UU
UPDATE Units SET Cost = 340, Combat= 50, RangedCombat = 60, BaseMoves = 4, Range = 2
WHERE UnitType = 'UNIT_ENGLISH_SEADOG';
UPDATE Units SET Cost = 340, Combat= 60, RangedCombat = 50, BaseMoves = 5
WHERE UnitType = 'UNIT_OTTOMAN_BARBARY_CORSAIR';
UPDATE Units SET Cost = 700, Combat= 75, RangedCombat = 75, BaseMoves = 5
WHERE UnitType = 'UNIT_GERMAN_UBOAT';


--飞机
UPDATE Units SET Cost = 1000
WHERE UnitType = 'UNIT_JET_FIGHTER';
UPDATE Units SET Cost = 900
WHERE UnitType = 'UNIT_BOMBER';
UPDATE Units SET Cost = 1200
WHERE UnitType = 'UNIT_JET_BOMBER';
--UU
UPDATE Units SET Cost = 800, BaseMoves = 9, Range = 9
WHERE UnitType = 'UNIT_AMERICAN_P51';

-------------------
-- Unit Upgrades --
-------------------

INSERT OR REPLACE INTO UnitUpgrades
(Unit,					UpgradeUnit) VALUES
('UNIT_DESTROYER',		'UNIT_MISSILE_FRIGATE');