--V224
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_CAMPUS';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_THEATER';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_HOLY_SITE';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_COMMERCIAL_HUB';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_INDUSTRIAL_ZONE';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_HARBOR';

UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_HANSA';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_ACROPOLIS';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_ROYAL_NAVY_DOCKYARD';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_COTHON';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_SUGUBA';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_SEOWON';
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_LAVRA';

UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_OBSERVATORY' AND EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OBSERVATORY');
UPDATE Districts SET OnePerCity=0
WHERE DistrictType='DISTRICT_OPPIDUM' AND EXISTS (SELECT * FROM Districts WHERE DistrictType = 'DISTRICT_OPPIDUM');