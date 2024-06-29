extends Node

@export var button : Button
@export var gridTest : ItemContainerGridView

var lootManager : LootManager
var itemGenerator : ItemGenerator
var itemContainerGrid : ItemContainerGrid
var string = "Item Name: %s | Type: %s | Weight: %s | Tier: %s"

func _ready():
	itemGenerator = ItemGenerator.new()
	itemContainerGrid = ItemContainerGrid.new().with_data(10, 10, [ItemType.EQUIPPABLE_ITEM, ItemType.CURRENCY])
	button.pressed.connect(self._button_pressed)
	lootManager = get_tree().current_scene.get_node("LootManager")
	gridTest.setup_grid(itemContainerGrid)

func _button_pressed() -> void:
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
			var itemObject = itemGenerator.generate_item(selectedItem) as EquippableItem
			
			print("-------- The generated item fields:")
			var printFormat = "Name: %s | Description: %s | Number of Sockets: %s"
			print(printFormat % [itemObject.Name, itemObject.Description, itemObject.NumberOfSockets])

