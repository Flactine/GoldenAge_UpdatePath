-- GA1_Fix
-- Author: Flactine
-- DateCreated: 8/31/2022 9:33:44 AM
--------------------------------------------------------------
UPDATE Projects
SET PrereqDistrict = 'DISTRICT_CITY_CENTER'
WHERE ProjectType = 'GA_PROJECT_WONDER_VICTORY1' OR (ProjectType = 'GA_PROJECT_WONDER_VICTORY2');