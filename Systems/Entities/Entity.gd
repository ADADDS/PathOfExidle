class_name Entity

var strength : Attribute
var dexterity : Attribute
var intelligence : Attribute
var constitution : Attribute
var effects : Array[Effect]

func initialize():
	strength.reset_values()
	dexterity.reset_values()
	intelligence.reset_values()
	constitution.reset_values()
	

func expire_effect(effect : Effect):
	effects.erase(effect)

func apply_effect(effect : Effect):
	effects.append(effect)
