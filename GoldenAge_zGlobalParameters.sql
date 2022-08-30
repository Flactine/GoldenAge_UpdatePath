--v229 文化胜利调整
--旅游业绩与国外游客
UPDATE GlobalParameters SET Value = 150 		WHERE Name = 'TOURISM_TOURISM_TO_MOVE_CITIZEN';--200
--文化值与国内游客
UPDATE GlobalParameters SET Value = 150 		WHERE Name = 'TOURISM_CULTURE_PER_CITIZEN';--100

--v231 金币信仰购买比率
UPDATE GlobalParameters SET Value = 1 		WHERE Name = 'GOLD_EQUIVALENT_OTHER_YIELDS';--2
UPDATE GlobalParameters SET Value = 2 		WHERE Name = 'GOLD_PURCHASE_MULTIPLIER';--2

--v238 来自人口数量的忠诚度压力上限
-- UPDATE GlobalParameters SET Value = 30 		WHERE Name = 'LOYALTY_PER_TURN_FROM_NEARBY_CITIZEN_PRESSURE_MAX_LOYALTY';--20