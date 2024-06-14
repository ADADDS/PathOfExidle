class_name EquippableItem extends Item

var NumberOfSockets

func with_data(itemData):
	NumberOfSockets = itemData["slots"]
	return super.with_data(itemData)
