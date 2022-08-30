--CSE
UPDATE Parameters SET GroupId = 'AdvancedOptions'
WHERE ParameterId = 'CSE_Favor_Suzerain' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');
UPDATE Parameters SET GroupId = 'AdvancedOptions'
WHERE ParameterId = 'CSE_CityState_Walls' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');
UPDATE Parameters SET GroupId = 'AdvancedOptions'
WHERE ParameterId = 'CSE_Favor_Consular' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');
UPDATE Parameters SET GroupId = 'AdvancedOptions'
WHERE ParameterId = 'CSE_Ethiopia_Mode' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');

DELETE FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');
DELETE FROM GameModeItems WHERE GameModeType='CSE_WALLS_OPTION' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');
DELETE FROM GameModeItems WHERE GameModeType='CSE_CONSULAR_OPTION' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');
DELETE FROM GameModeItems WHERE GameModeType='CSE_ETHIOPIA_OPTION' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='CSE_FAVOR_OPTION');

--Ocean
UPDATE Parameters SET DefaultValue = 1
WHERE ParameterId = 'GameMode_Suk_Oceans' AND EXISTS (SELECT * FROM GameModeItems WHERE GameModeType='GAMEMODE_SUK_OCEANS');

--Game mode icons
UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_CITYLEVEL',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_CITYLEVEL';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_MEGALOPOLIS',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_MEGALOPOLIS';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GOLDEN_NATIONALWONDER',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'WONDER_OPTION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GOLDEN_EXTRA_TRAITS',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'EXTRA_TRAITS_OPTION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GOLDEN_HISTORY',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'HISTORY_OPTION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GOLDEN_APPEAL',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'APPEAL_OPTION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_CITYPOLICY',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_CITYPOLICY';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_MILITARYSERVICE',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_MILITARYSERVICE';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GOLDEN_WORLDWAR',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'WORLDWAR_OPTION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GOLDEN_FRIEND',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'FRIEND_OPTION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_TOTALWAR',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_TOTALWAR';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_MEGALOPOLIS_PRO',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_MEGALOPOLIS_PRO';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_CULTIVATION',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_CULTIVATION';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_BUILDINGEXPANSION',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_BUILDINGEXPANSION_NEW';

UPDATE	GameModeItems
SET		Portrait = 'IMAGE_GA_MILESTONE',
		Background = 'GOLDENAGE_MODE_BACKGROUND'
WHERE	GameModeType = 'GA_MILESTONE';