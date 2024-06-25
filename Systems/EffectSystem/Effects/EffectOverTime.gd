class_name EffectOverTime extends Effect

var tickDuration : float
var nextTick : float

func on_apply() -> void:
	super.on_apply()
	calculate_initial_tick()

func handle_effect_tick(delta : float) -> void:
	super.handle_effect_tick(delta)
	
	if (duration < nextTick):
		apply_on_tick_effect()
		calculate_next_tick()

func calculate_initial_tick() -> void:
	var ceil = ceil(duration)
	nextTick = ceil
	calculate_next_tick()

func calculate_next_tick() -> void:
	while(nextTick > duration):
		nextTick -= tickDuration

func apply_on_tick_effect() -> void:
	pass
