extends Resource
class_name CombatantStats

@export var max_health: int
@export var current_health: int
@export var attack: int
@export var defense: int
@export var speed: int

@export var max_miasma: int = 0
@export var current_miasma: int = 0
@export var max_break: int = 0
@export var current_break: int = 0

@export var hand_damage_taken: int = 0
@export var hand_break_threshold: int = 0
@export var hand_lost: bool = false
@export var hand_warned: bool = false

@export var leg_damage_taken: int = 0
@export var leg_break_threshold: int = 0
@export var leg_lost: bool = false
@export var leg_warned: bool = false

# Returns "" (nothing happened), "warn", or "break"
func apply_limb_damage(limb: State.Limb, amount: int) -> String:
	match limb:
		State.Limb.HAND:
			if hand_lost: return ""
			hand_damage_taken += amount
			if hand_damage_taken >= hand_break_threshold:
				hand_lost = true
				return "break"
			elif hand_damage_taken >= hand_break_threshold * 0.5 and not hand_warned:
				hand_warned = true
				return "warn"
		State.Limb.LEG:
			if leg_lost: return ""
			leg_damage_taken += amount
			if leg_damage_taken >= leg_break_threshold:
				leg_lost = true
				return "break"
			elif leg_damage_taken >= leg_break_threshold * 0.5 and not leg_warned:
				leg_warned = true
				return "warn"
	return ""

func get_effective_attack() -> int:
	return int(attack * 0.6) if hand_lost else attack

func get_effective_speed() -> int:
	return int(speed * 0.6) if leg_lost else speed
