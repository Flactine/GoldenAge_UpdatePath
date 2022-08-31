-- GoldenAge_NoPopLose
-- Author: Flactine
-- DateCreated: 8/31/2022 11:19:03 AM
--------------------------------------------------------------
-------
--自然灾害不导致人口损失（当然，像陨石那样把城扬了就没办法了）
-------
DELETE FROM RandomEvent_Damages WHERE DamageType = 'POPULATION_LOSS';
