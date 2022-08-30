--更多资源
UPDATE Resources SET SeaFrequency = SeaFrequency * 20 WHERE SeaFrequency <> 0 AND ResourceClassType = 'RESOURCECLASS_BONUS';
UPDATE Resources SET Frequency = Frequency * 20 WHERE Frequency <> 0 AND ResourceClassType = 'RESOURCECLASS_BONUS';

UPDATE Resources SET Frequency = Frequency * 20 WHERE Frequency <> 0 AND ResourceClassType = 'RESOURCECLASS_LUXURY';

UPDATE Resources SET Frequency = Frequency * 20 WHERE Frequency <> 0 AND ResourceClassType = 'RESOURCECLASS_STRATEGIC';
