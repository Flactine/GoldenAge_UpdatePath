--V228 未来时代政策改为非紫卡
UPDATE Policies SET GovernmentSlotType="SLOT_MILITARY" WHERE PolicyType="POLICY_FUTURE_VICTORY_SCIENCE";
UPDATE Policies SET GovernmentSlotType="SLOT_DIPLOMATIC" WHERE PolicyType="POLICY_FUTURE_COUNTER_CULTURE";
UPDATE Policies SET GovernmentSlotType="SLOT_DIPLOMATIC" WHERE PolicyType="POLICY_FUTURE_VICTORY_CULTURE";
UPDATE Policies SET GovernmentSlotType="SLOT_DIPLOMATIC" WHERE PolicyType="POLICY_FUTURE_COUNTER_SCIENCE";
UPDATE Policies SET GovernmentSlotType="SLOT_MILITARY" WHERE PolicyType="POLICY_FUTURE_VICTORY_DOMINATION";
UPDATE Policies SET GovernmentSlotType="SLOT_DIPLOMATIC" WHERE PolicyType="POLICY_FUTURE_COUNTER_DIPLOMATIC";
UPDATE Policies SET GovernmentSlotType="SLOT_DIPLOMATIC" WHERE PolicyType="POLICY_FUTURE_VICTORY_DIPLOMATIC";
UPDATE Policies SET GovernmentSlotType="SLOT_MILITARY" WHERE PolicyType="POLICY_FUTURE_COUNTER_DOMINATION";