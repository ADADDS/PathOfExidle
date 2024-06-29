class_name ItemContainerGrid extends Node

var Grid = []
var Rows : int
var Columns : int

func with_data(rows : int, columns : int, supportedTypes : Array[int]) -> ItemContainerGrid:
	Rows = rows
	Columns = columns
	for row in range(Rows):
		Grid.append([])
		for column in range(Columns):
			var itemContainer = ItemContainer.new().with_data(supportedTypes)
			itemContainer.posx = row
			itemContainer.posy = column
			Grid[row].append(itemContainer)
	return self
