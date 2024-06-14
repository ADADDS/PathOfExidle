class_name ItemGenerator extends Node

func generate_item(itemData):
	var generatedObject
	
	match itemData["type"]:
		"Helmet", "Belt", "Gloves":
			generatedObject = EquippableItem.new().with_data(itemData)
		_:
			generatedObject = null
	
	return generatedObject;

func _ready():
	
	pass
	
