class_name Item

var Name
var Description

func with_data(itemData):
	Name = itemData["name"]
	Description = "There is no description yet!"
	return self;
