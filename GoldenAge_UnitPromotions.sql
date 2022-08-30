--===
--右线1：PROMOTION_THRUST 突袭
--原：与近战单位战斗时+10战斗力。
--改：+1移动力。+1视野。
--===
DELETE FROM UnitPromotionModifiers WHERE UnitPromotionType = 'PROMOTION_THRUST';

INSERT OR REPLACE INTO UnitPromotionModifiers			
(UnitPromotionType,			ModifierId)
VALUES
('PROMOTION_THRUST',	'MODIFIER_GA_PROMOTION_THRUST_SIGHT_BONUS'),
('PROMOTION_THRUST',	'COMMANDO_BONUS_MOVEMENT');

INSERT INTO Modifiers
(ModifierId,									ModifierType)
VALUES
('MODIFIER_GA_PROMOTION_THRUST_SIGHT_BONUS',	'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT');

INSERT INTO ModifierArguments
(ModifierId,										Name,			Value)
VALUES			
('MODIFIER_GA_PROMOTION_THRUST_SIGHT_BONUS',		'Amount',		1);