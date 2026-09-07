extends Resource
class_name StanceData

@export var stance: State.Stance
@export var display_name: String = ""
@export var description: String = ""

# UI (Abel only — enemy doesn't use these)
@export var icon: Texture2D = null
@export var icon_size: Vector2 = Vector2(32, 32)

# Combat (used by Abel)
@export var target_limb : State.Limb = State.Limb.NONE
@export var attack_multiplier: float = 1.0
@export var defense_multiplier: float = 1.0
@export var miss_chance: float = 0.0
@export var builds_break: bool = false
@export var is_speed_check : bool = false
@export var crit_chance_per_speed_point: float = 0.05  
@export var fail_damage_multiplier: float = 1.5  
