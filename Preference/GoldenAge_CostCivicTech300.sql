UPDATE Civics SET Cost = Cost*3;

UPDATE Technologies SET Cost = Cost*3;

UPDATE Eras SET GreatPersonBaseCost = GreatPersonBaseCost*3;

UPDATE Eras_XP1 SET GameEraMaximumTurns = GameEraMaximumTurns*3, GameEraMinimumTurns = GameEraMinimumTurns*3;

UPDATE Maps_XP2 SET CO2For1DegreeTempRise = CO2For1DegreeTempRise*3;

-- Online
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_ONLINE';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_ONLINE', 	640, 			60),			
							('GAMESPEED_ONLINE', 	280, 			60),			
							('GAMESPEED_ONLINE', 	160, 			60),			
							('GAMESPEED_ONLINE', 	72, 			60),			
							('GAMESPEED_ONLINE', 	24, 			60),			
							('GAMESPEED_ONLINE', 	12, 			120),			
							('GAMESPEED_ONLINE', 	6, 				60),			                                       
							('GAMESPEED_ONLINE', 	4, 				60);

-- Quick
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_QUICK';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_QUICK', 	480, 			80),			
							('GAMESPEED_QUICK', 	210, 			80),			
							('GAMESPEED_QUICK', 	120, 			80),			
							('GAMESPEED_QUICK', 	54, 			80),			
							('GAMESPEED_QUICK', 	18, 			80),			
							('GAMESPEED_QUICK', 	9, 			    160),			
							('GAMESPEED_QUICK', 	4.5, 			80),                                            			
							('GAMESPEED_QUICK', 	3, 				80);			
	


DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_STANDARD';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_STANDARD', 	320, 			120),			
							('GAMESPEED_STANDARD', 	140, 			120),			
							('GAMESPEED_STANDARD', 	80, 			120),			
							('GAMESPEED_STANDARD', 	36, 			120),			
							('GAMESPEED_STANDARD', 	12, 			120),			
							('GAMESPEED_STANDARD', 	6, 			    240),			
							('GAMESPEED_STANDARD', 	3, 			    120),                                            			
							('GAMESPEED_STANDARD', 	2, 			    120);			

-- Epic	
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_EPIC';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_EPIC', 		213, 			180),			
							('GAMESPEED_EPIC', 		93, 			180),			
							('GAMESPEED_EPIC', 		54, 			180),			
							('GAMESPEED_EPIC', 		24, 			180),			
							('GAMESPEED_EPIC', 		9, 				180),			
							('GAMESPEED_EPIC', 		6, 			    360),			
							('GAMESPEED_EPIC', 		2, 			    180),                                            			
							('GAMESPEED_EPIC', 		1, 			    180);


DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_MARATHON';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_MARATHON', 	107, 			360),			
							('GAMESPEED_MARATHON', 	47, 			360),			
							('GAMESPEED_MARATHON', 	27, 			360),			
							('GAMESPEED_MARATHON', 	12, 			360),			
							('GAMESPEED_MARATHON', 	4, 				360),			
							('GAMESPEED_MARATHON', 	2, 			    720),			
							('GAMESPEED_MARATHON', 	1, 			    360),                                            			
							('GAMESPEED_MARATHON', 	0.6, 			360);			
					


--TreeRandomizer						
CREATE TABLE IF NOT EXISTS TechnologyRandomCosts (Cost INT, TechnologyType TEXT); 
UPDATE TechnologyRandomCosts SET Cost = Cost*3;
CREATE TABLE IF NOT EXISTS CivicRandomCosts (Cost INT, CivicType TEXT); 
UPDATE CivicRandomCosts SET Cost = Cost*3;