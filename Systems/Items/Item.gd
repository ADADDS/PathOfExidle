class_name Item

var Name : String
var Description : String

func with_data(itemData) -> Item:
	Name = itemData["name"]
	Description = "There is no description yet!"
	return self;
