extends Node

@export var button : Button
var lootManager
var string = "Item Name: %s | Type: %s | Weight: %s | Tier: %s"
var itemGenerator

func _ready():
	itemGenerator = ItemGenerator.new()
	button.pressed.connect(self._button_pressed)
	lootManager = get_tree().current_scene.get_node("LootManager")

func _button_pressed():
	print("-----------------------------------------------------------------")
	print("-----------------------------------------------------------------")
	for i in range(5):
		print("-----------------------------------------------------------------")
		var selectedItem = lootManager.select_random_item()
		print("Item tier is: %s" % selectedItem["tier"])
		
		if (selectedItem["tier"] >= 2):
			print("---- ITEM DISCARDED")
		else:
			print("---- ITEM IS COOL!")
			print("And the selected item is:")
			print(string % [selectedItem["name"], selectedItem["type"], selectedItem["weight"], selectedItem["tier"]])
			var itemObject = itemGenerator.generate_item(selectedItem)
			
			print("-------- The generated item fields:")
			var printFormat = "Name: %s | Description: %s | Number of Sockets: %s"
			print(printFormat % [itemObject.Name, itemObject.Description, itemObject.NumberOfSockets])

