-- Icons
-- Author: Flactine
-- DateCreated: 10/2/2021 9:22:22 PM
--------------------------------------------------------------
--=====
--IconTextureAtlases
--=====
INSERT INTO IconTextureAtlases 
(Name,									IconSize,	IconsPerRow,	IconsPerColumn, Filename)
VALUES
('ICON_ATLAS_UNIT_GA_INVISIBLE',		22,			4,				3,				'Invisible_22'),
('ICON_ATLAS_UNIT_GA_INVISIBLE',		32,			4,				3,				'Invisible_32'),
('ICON_ATLAS_UNIT_GA_INVISIBLE',		38,			4,				3,				'Invisible_38'),
('ICON_ATLAS_UNIT_GA_INVISIBLE',		50,			4,				3,				'Invisible_50'),
('ICON_ATLAS_UNIT_GA_INVISIBLE',		80,			4,				3,				'Invisible_80'),
('ICON_ATLAS_UNIT_GA_INVISIBLE',		256,		4,				3,				'Invisible_256');
--=====
--IconDefinitions
--=====
INSERT INTO IconDefinitions
(Name,								Atlas,								'Index')
VALUES
('ICON_UNIT_GA_STEALTH_1',			'ICON_ATLAS_UNIT_GA_INVISIBLE',		0),
('ICON_UNIT_GA_STEALTH_1_WHITE',	'ICON_ATLAS_UNIT_GA_INVISIBLE',		0),
('ICON_UNIT_GA_STEALTH_1_BLACK',	'ICON_ATLAS_UNIT_GA_INVISIBLE',		0),
('ICON_UNIT_GA_STEALTH_2',			'ICON_ATLAS_UNIT_GA_INVISIBLE',		1),
('ICON_UNIT_GA_STEALTH_2_WHITE',	'ICON_ATLAS_UNIT_GA_INVISIBLE',		1),
('ICON_UNIT_GA_STEALTH_2_BLACK',	'ICON_ATLAS_UNIT_GA_INVISIBLE',		1);