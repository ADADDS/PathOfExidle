extends Node

var itemsList
var totalWeight: int

# Setup Variables
func _ready():
	itemsList = JsonReader.itemData["Items"]
	var string = "Item Name: %s | Type: %s | Weight: %s"
	for item in itemsList:
		print(string % [item["name"], item["type"], item["weight"]])
	
	process_items()
	
	for i in range(4):
		print("-----------------------------------------------------------------")
		var selectedItem = select_random_item()
		print("And the selected item is:")
		print(string % [selectedItem["name"], selectedItem["type"], selectedItem["weight"]])

func select_random_item():
	var randomValue = randi() % totalWeight
	print("Random Value is: %s" % randomValue)
	var currentValue = -1
	var index = -1
	while (currentValue < randomValue):
		index += 1
		currentValue += itemsList[index]["weight"]
		itemsList[index]
	
	return itemsList[index]
	
func process_items():
	totalWeight = 0
	for item in itemsList:
		totalWeight += item["weight"]
	print("Total weight is: %s" % totalWeight)


