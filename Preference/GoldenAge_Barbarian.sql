--15
-- UPDATE GlobalParameters
-- SET Value = -15
-- WHERE Name = 'BARBARIAN_BOLDNESS_PER_KILL';
--2
-- UPDATE GlobalParameters
-- SET Value = -2
-- WHERE Name = 'BARBARIAN_BOLDNESS_PER_TURN';
--3
UPDATE GlobalParameters
SET Value = 6
WHERE Name = 'BARBARIAN_CAMP_MAX_PER_MAJOR_CIV';
--7
UPDATE GlobalParameters
SET Value = 4
WHERE Name = 'BARBARIAN_CAMP_MINIMUM_DISTANCE_ANOTHER_CAMP';
--50
-- UPDATE GlobalParameters
-- SET Value = 100
-- WHERE Name = 'BARBARIAN_TECH_PERCENT';
--2
UPDATE GlobalParameters
SET Value = 20
WHERE Name = 'BARBARIAN_CAMP_ODDS_OF_NEW_CAMP_SPAWNING';
--==================================================
UPDATE BarbarianTribes
SET TurnsToWarriorSpawn = 5
WHERE MeleeTag = 'CLASS_NAVAL_MELEE';

UPDATE BarbarianTribes
SET TurnsToWarriorSpawn = 10
WHERE MeleeTag = 'CLASS_LIGHT_CAVALRY';

UPDATE BarbarianTribes
SET TurnsToWarriorSpawn = 5
WHERE MeleeTag = 'CLASS_MELEE';
--==================================================
UPDATE BarbarianAttackForces
SET SpawnRate = SpawnRate*20
WHERE MeleeTag = 'CLASS_MELEE';

UPDATE BarbarianAttackForces
SET SpawnRate = SpawnRate*20
WHERE MeleeTag = 'CLASS_LIGHT_CAVALRY';

UPDATE BarbarianAttackForces
SET SpawnRate = SpawnRate*20
WHERE MeleeTag = 'CLASS_NAVAL_MELEE';
