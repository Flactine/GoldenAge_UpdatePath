-- GA1_Fix
-- Author: Flactine
-- DateCreated: 8/31/2022 9:33:44 AM
--------------------------------------------------------------
-------
--修复皇家学会建造者不能加速奇观胜利项目的bug
-------
UPDATE Projects
SET PrereqDistrict = 'DISTRICT_CITY_CENTER'
WHERE ProjectType = 'GA_PROJECT_WONDER_VICTORY1' OR (ProjectType = 'GA_PROJECT_WONDER_VICTORY2');
-------
--修复建筑拓展特色建筑冲突bug
-------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
(Building,						MutuallyExclusiveBuilding)
SELECT
a.CivUniqueBuildingType,		b.MutuallyExclusiveBuilding
FROM BuildingReplaces AS a, MutuallyExclusiveBuildings AS b WHERE a.ReplacesBuildingType = b.Building;
