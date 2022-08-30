--v226 更多资源
UPDATE Resources SET Frequency = 4 WHERE Frequency <> 0 AND ResourceClassType = 'RESOURCECLASS_LUXURY';

UPDATE Resources SET Frequency = 10 WHERE ResourceType = 'RESOURCE_BANANAS';
UPDATE Resources SET Frequency = 12 WHERE ResourceType = 'RESOURCE_CATTLE';
UPDATE Resources SET Frequency = 12 WHERE ResourceType = 'RESOURCE_COPPER';
UPDATE Resources SET Frequency = 30 WHERE ResourceType = 'RESOURCE_CRABS';
UPDATE Resources SET Frequency = 12 WHERE ResourceType = 'RESOURCE_DEER';
UPDATE Resources SET Frequency = 40 WHERE ResourceType = 'RESOURCE_FISH';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_RICE';
UPDATE Resources SET Frequency = 12 WHERE ResourceType = 'RESOURCE_SHEEP';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_STONE';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_WHEAT';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_MAIZE' AND EXISTS (SELECT * FROM Resources WHERE ResourceType='RESOURCE_MAIZE');

UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_HORSES';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_IRON';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_NITER';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_COAL';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_ALUMINUM';
UPDATE Resources SET Frequency = 12, SeaFrequency = 12 WHERE ResourceType = 'RESOURCE_OIL';
UPDATE Resources SET Frequency = 20 WHERE ResourceType = 'RESOURCE_URANIUM';

--v229 删除战略资源科技
DELETE FROM TraitModifiers WHERE ModifierId = 'GOLDEN_STRATEGIC_ADD_SCIENCE_CIVIC_SCORCHED_EARTH';

--v238 战略资源
UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 4  WHERE ResourceType = 'RESOURCE_COAL';
UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 4  WHERE ResourceType = 'RESOURCE_OIL';
UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 4  WHERE ResourceType = 'RESOURCE_URANIUM';

UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 2  WHERE ResourceType = 'RESOURCE_HORSES';
UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 2  WHERE ResourceType = 'RESOURCE_IRON';
UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 2  WHERE ResourceType = 'RESOURCE_NITER';
UPDATE Resource_Consumption SET BaseExtractionRate = 1, ImprovedExtractionRate = 2  WHERE ResourceType = 'RESOURCE_ALUMINUM';

