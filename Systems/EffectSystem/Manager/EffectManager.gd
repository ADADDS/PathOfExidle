class_name EffectManager extends Node

signal on_effect_tick (delta)

func _process(delta):
	on_effect_tick.emit(delta)
