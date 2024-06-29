class_name Item

var Name : String
var Description : String
var RowSlots : int
var ColumnSlots : int
var Type : int

func with_data(itemData) -> Item:
	Name = itemData["name"]
	Description = "There is no description yet!"
	RowSlots = 3
	ColumnSlots = 2
	return self;
