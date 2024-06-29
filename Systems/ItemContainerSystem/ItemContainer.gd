class_name ItemContainer extends Node

var IsOccupied : bool
var ContainedItem : Item
var SupportedItemTypes : Array[int] 

var posx : int
var posy : int

func with_data (supportedTypes : Array[int]):
	self.SupportedItemTypes = supportedTypes
	return self

func try_equip_item (item : Item) -> bool:
	if (IsOccupied):
		return false
	
	ContainedItem = item
	IsOccupied = true
	return true

func remove_item () -> Item:
	if (!IsOccupied):
		return null
	
	IsOccupied = false
	var temp = ContainedItem
	ContainedItem = null
	return temp

func handle_click () -> void:
	print("FUI CLICADO!", [posx, posy])
