class_name Attribute

var staticValue : int
var multiplicativeValue : float
var totalValue : float

func reset_values():
	staticValue = 0
	multiplicativeValue = 0
	totalValue = 0

func change_static_value(value : float):
	staticValue += value
	update_total_value()
	
func change_multiplicative_value(value : float):
	multiplicativeValue += value
	update_total_value()
	
func update_total_value():
	totalValue = staticValue * multiplicativeValue
