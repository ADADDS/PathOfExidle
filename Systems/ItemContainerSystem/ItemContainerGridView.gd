class_name ItemContainerGridView extends Control

@export var Grid : GridContainer

var containerView = preload("res://Systems/ItemContainerSystem/ItemContainerView.tscn")

var gridImpl : ItemContainerGrid 

func setup_grid (gridImpl : ItemContainerGrid):
	self.gridImpl = gridImpl	
	
	Grid.columns = gridImpl.Columns
	for i in range(gridImpl.Rows):
		for j in range(gridImpl.Columns):
			var newView = containerView.instantiate()
			Grid.add_child(newView)
			newView.setup_view(gridImpl.Grid[i][j])
