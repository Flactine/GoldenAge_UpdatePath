--V224 每种政体政策槽
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_AUTOCRACY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_OLIGARCHY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_CLASSICAL_REPUBLIC' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_MONARCHY' AND GovernmentSlotType='SLOT_DIPLOMATIC';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_MONARCHY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_MERCHANT_REPUBLIC' AND GovernmentSlotType='SLOT_MILITARY';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_MERCHANT_REPUBLIC' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_THEOCRACY' AND GovernmentSlotType='SLOT_DIPLOMATIC';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_THEOCRACY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_COMMUNISM' AND GovernmentSlotType='SLOT_MILITARY';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_COMMUNISM' AND GovernmentSlotType='SLOT_ECONOMIC';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_COMMUNISM' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_DEMOCRACY' AND GovernmentSlotType='SLOT_ECONOMIC';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_DEMOCRACY' AND GovernmentSlotType='SLOT_DIPLOMATIC';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_DEMOCRACY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_FASCISM' AND GovernmentSlotType='SLOT_MILITARY';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_FASCISM' AND GovernmentSlotType='SLOT_ECONOMIC';
UPDATE Government_SlotCounts SET NumSlots = 2 WHERE GovernmentType = 'GOVERNMENT_FASCISM' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_CORPORATE_LIBERTARIANISM' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_CORPORATE_LIBERTARIANISM' AND GovernmentSlotType='SLOT_ECONOMIC';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_CORPORATE_LIBERTARIANISM' AND GovernmentSlotType='SLOT_DIPLOMATIC';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_CORPORATE_LIBERTARIANISM' AND GovernmentSlotType='SLOT_MILITARY';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_DIGITAL_DEMOCRACY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_DIGITAL_DEMOCRACY' AND GovernmentSlotType='SLOT_DIPLOMATIC';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_DIGITAL_DEMOCRACY' AND GovernmentSlotType='SLOT_ECONOMIC';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_DIGITAL_DEMOCRACY' AND GovernmentSlotType='SLOT_MILITARY';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_SYNTHETIC_TECHNOCRACY' AND GovernmentSlotType='SLOT_WILDCARD';
UPDATE Government_SlotCounts SET NumSlots = 3 WHERE GovernmentType = 'GOVERNMENT_SYNTHETIC_TECHNOCRACY' AND GovernmentSlotType='SLOT_MILITARY';
UPDATE Government_SlotCounts SET NumSlots = 1 WHERE GovernmentType = 'GOVERNMENT_SYNTHETIC_TECHNOCRACY' AND GovernmentSlotType='SLOT_DIPLOMATIC';

--v236 兼容商业中心拓展
UPDATE Modifiers SET SubjectRequirementSetId = 'GOLDEN_CITY_HAS_DISTRICT_COMMERCIAL_HUB_T3_BUILDING_REQUIREMENTS' WHERE ModifierId = 'GOLDEN_DEMOCRACY_CITY_ALLYIELD';