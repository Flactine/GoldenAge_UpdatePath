UPDATE Districts SET ZOC = 0, HitPoints = 0
WHERE DistrictType='DISTRICT_HARBOR';
UPDATE Districts SET ZOC = 0, HitPoints = 0
WHERE DistrictType='DISTRICT_ROYAL_NAVY_DOCKYARD';
UPDATE Districts SET ZOC = 0, HitPoints = 0
WHERE DistrictType='DISTRICT_COTHON';
UPDATE Districts SET ZOC = 0, HitPoints = 0
WHERE DistrictType='DISTRICT_NATIONAL_HARBOR' AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_NATIONAL_HARBOR');

DELETE FROM Districts_XP2 WHERE DistrictType='DISTRICT_HARBOR';
DELETE FROM Districts_XP2 WHERE DistrictType='DISTRICT_ROYAL_NAVY_DOCKYARD';
DELETE FROM Districts_XP2 WHERE DistrictType='DISTRICT_COTHON';
DELETE FROM Districts_XP2 WHERE DistrictType='DISTRICT_NATIONAL_HARBOR' AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_NATIONAL_HARBOR');