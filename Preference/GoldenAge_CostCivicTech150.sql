UPDATE Civics SET Cost = Cost*1.5;

UPDATE Technologies SET Cost = Cost*1.5;

UPDATE Eras SET GreatPersonBaseCost = GreatPersonBaseCost*1.5;

UPDATE Eras_XP1 SET GameEraMaximumTurns = GameEraMaximumTurns*1.5, GameEraMinimumTurns = GameEraMinimumTurns*1.5;

UPDATE Maps_XP2 SET CO2For1DegreeTempRise = CO2For1DegreeTempRise*1.5;

DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_ONLINE';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_ONLINE', 	1280, 			30),			
							('GAMESPEED_ONLINE', 	560, 			30),			
							('GAMESPEED_ONLINE', 	320, 			30),			
							('GAMESPEED_ONLINE', 	144, 			30),			
							('GAMESPEED_ONLINE', 	48, 			30),			
							('GAMESPEED_ONLINE', 	24, 			60),				
			                ('GAMESPEED_ONLINE', 	12, 			30), 
							('GAMESPEED_ONLINE', 	8, 				30);

-- Quick
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_QUICK';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_QUICK', 	960, 			40),			
							('GAMESPEED_QUICK', 	420, 			40),			
							('GAMESPEED_QUICK', 	240, 			40),			
							('GAMESPEED_QUICK', 	108, 			40),					
							('GAMESPEED_QUICK', 	26, 			40),			
							('GAMESPEED_QUICK', 	18, 			80),			
							('GAMESPEED_QUICK', 	9, 				40),			
							('GAMESPEED_QUICK', 	6, 				40);


DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_STANDARD';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_STANDARD', 	640, 			60),			 
							('GAMESPEED_STANDARD', 	280, 			60),			
							('GAMESPEED_STANDARD', 	160, 			60),			
							('GAMESPEED_STANDARD', 	72, 			60),			
							('GAMESPEED_STANDARD', 	24, 			60),			
							('GAMESPEED_STANDARD', 	12, 			120),			
							('GAMESPEED_STANDARD', 	6, 				60),			                                             
							('GAMESPEED_STANDARD', 	4, 				60);			


-- Epic	
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_EPIC';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_EPIC', 	426, 			90),			
							('GAMESPEED_EPIC', 	186, 			90),			
							('GAMESPEED_EPIC', 	107, 			90),			
							('GAMESPEED_EPIC', 	48, 			90),			
							('GAMESPEED_EPIC', 	18, 			90),			
							('GAMESPEED_EPIC', 	8, 				180),			
							('GAMESPEED_EPIC', 	4, 				90),			                                       
							('GAMESPEED_EPIC', 	3, 				90);			
-- Marathon
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_MARATHON';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_MARATHON', 	213, 			180),			
							('GAMESPEED_MARATHON', 	93, 			180),			
							('GAMESPEED_MARATHON', 	54, 			180),			
							('GAMESPEED_MARATHON', 	24, 			180),			
							('GAMESPEED_MARATHON', 	9, 				180),			
							('GAMESPEED_MARATHON', 	6, 			    360),			
							('GAMESPEED_MARATHON', 	2, 			    180),                                            			
							('GAMESPEED_MARATHON', 	1, 			    180);
							
--TreeRandomizer						
CREATE TABLE IF NOT EXISTS TechnologyRandomCosts (Cost INT, TechnologyType TEXT); 
UPDATE TechnologyRandomCosts SET Cost = Cost*1.5;
CREATE TABLE IF NOT EXISTS CivicRandomCosts (Cost INT, CivicType TEXT); 
UPDATE CivicRandomCosts SET Cost = Cost*1.5;									