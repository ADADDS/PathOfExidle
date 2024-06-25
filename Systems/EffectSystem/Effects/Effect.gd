class_name Effect

var duration : float
var target : Entity

func with_data(effectManager : EffectManager, target: Entity) -> void:
	effectManager.on_effect_tick.connect(handle_effect_tick)
	self.target = target

func handle_effect_tick(delta : float) -> void:
	duration -= delta

func on_apply() -> void:
	target.apply_effect(self)

func on_dispell() -> void:
	target.expire_effect(self)

