include("Civ6Common");

function WriteMyCustomData(TableStringKey, TableValue)
	WriteCustomData(TableStringKey, TableValue);
end

function ReadMyCustomData(TableStringKey)
	local MyDatatable = ReadCustomData(TableStringKey);
	return MyDatatable;
end

ExposedMembers.ResourceCultivation.WriteMyCustomData = WriteMyCustomData;
ExposedMembers.ResourceCultivation.ReadMyCustomData = ReadMyCustomData;

print('Farmer & Gardener Custom Data UI Script loaded');