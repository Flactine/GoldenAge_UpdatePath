UPDATE Civics SET Cost = Cost*2;

UPDATE Technologies SET Cost = Cost*2;

UPDATE Eras SET GreatPersonBaseCost = GreatPersonBaseCost*2;

UPDATE Eras_XP1 SET GameEraMaximumTurns = GameEraMaximumTurns*2, GameEraMinimumTurns = GameEraMinimumTurns*2;

UPDATE Maps_XP2 SET CO2For1DegreeTempRise = CO2For1DegreeTempRise*2;

-- Online
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_ONLINE';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_ONLINE', 	960, 			40),			
							('GAMESPEED_ONLINE', 	420, 			40),			
							('GAMESPEED_ONLINE', 	240, 			40),			
							('GAMESPEED_ONLINE', 	108, 			40),			
							('GAMESPEED_ONLINE', 	36, 			40),			
							('GAMESPEED_ONLINE', 	18, 			80),				
			                ('GAMESPEED_ONLINE', 	9, 				40),            	
							('GAMESPEED_ONLINE', 	6, 				40);

-- Quick
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_QUICK';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_QUICK', 	720, 			54),			
							('GAMESPEED_QUICK', 	315, 			54),			
							('GAMESPEED_QUICK', 	180, 			53),			
							('GAMESPEED_QUICK', 	81, 			53),					
							('GAMESPEED_QUICK', 	54, 			54),			
							('GAMESPEED_QUICK', 	13.5, 			107),			
							('GAMESPEED_QUICK', 	6.75, 			53),			
							('GAMESPEED_QUICK', 	4.5, 			54);

DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_STANDARD';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_STANDARD', 	480, 			80),			
							('GAMESPEED_STANDARD', 	210, 			80),			
							('GAMESPEED_STANDARD', 	120, 			80),			 
							('GAMESPEED_STANDARD', 	54, 			80),			
							('GAMESPEED_STANDARD', 	18, 			80),			 
							('GAMESPEED_STANDARD', 	9, 			    160),			
							('GAMESPEED_STANDARD', 	4.5, 			80),                                            			
							('GAMESPEED_STANDARD', 	3, 				80);			
	
-- Epic	
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_EPIC';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_EPIC', 	320, 			120),			
							('GAMESPEED_EPIC', 	140, 			120),			
							('GAMESPEED_EPIC', 	80, 			120),			
							('GAMESPEED_EPIC', 	36, 			120),			
							('GAMESPEED_EPIC', 	12, 			120),			
							('GAMESPEED_EPIC', 	6, 			    240),			
							('GAMESPEED_EPIC', 	3, 			    120),                                            			
							('GAMESPEED_EPIC', 	2, 			    120);			
-- Marathon
DELETE FROM GameSpeed_Turns WHERE GameSpeedType = 'GAMESPEED_MARATHON';
INSERT OR REPLACE INTO GameSpeed_Turns (GameSpeedType, 		MonthIncrement, TurnsPerIncrement)
VALUES 						('GAMESPEED_MARATHON', 	160, 			240),			
							('GAMESPEED_MARATHON', 	70, 			240),			
							('GAMESPEED_MARATHON', 	40, 			240),			
							('GAMESPEED_MARATHON', 	18, 			240),			
							('GAMESPEED_MARATHON', 	6, 				240),			
							('GAMESPEED_MARATHON', 	3, 			    480),			
							('GAMESPEED_MARATHON', 	1.5, 		    240),                                            			
							('GAMESPEED_MARATHON', 	1, 			    240);			
						

--TreeRandomizer			
CREATE TABLE IF NOT EXISTS TechnologyRandomCosts (Cost INT, TechnologyType TEXT); 
UPDATE TechnologyRandomCosts SET Cost = Cost*2;
CREATE TABLE IF NOT EXISTS CivicRandomCosts (Cost INT, CivicType TEXT); 
UPDATE CivicRandomCosts SET Cost = Cost*2;							