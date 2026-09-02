extends Resource
class_name EnemyData

@export var enemy_name: String = "Enemy"
@export var stats: CombatantStats
@export var possible_stances: Array[State.Stance] = [State.Stance.FOOLS_GUARD]
@export var starting_stance: State.Stance = State.Stance.FOOLS_GUARD
@export var battle_start_text: String = ""

@export var idle_sprite: SpriteFrames
@export var fools_guard_sprite: SpriteFrames
@export var plow_short_sprite: SpriteFrames
@export var roof_stance_sprite: SpriteFrames
@export var prism_stance_sprite: SpriteFrames

@export var hand_warn_text: String = ""
@export var hand_break_text: String = ""
@export var leg_warn_text: String = ""
@export var leg_break_text: String = ""

func get_stance_sprite(stance: State.Stance) -> SpriteFrames:
	match stance:
		State.Stance.IDLE: return idle_sprite
		State.Stance.FOOLS_GUARD: return fools_guard_sprite
		State.Stance.PLOW_SHORT: return plow_short_sprite
		State.Stance.ROOF_STANCE: return roof_stance_sprite
		State.Stance.PRISM_STANCE: return prism_stance_sprite
	return idle_sprite

func get_hand_warn_text() -> String:
	return hand_warn_text if hand_warn_text != "" else "Something in its hand seems off."

func get_hand_break_text() -> String:
	return hand_break_text if hand_break_text != "" else "Its hand gives out completely!"

func get_leg_warn_text() -> String:
	return leg_warn_text if leg_warn_text != "" else "Its footing looks unsteady."

func get_leg_break_text() -> String:
	return leg_break_text if leg_break_text != "" else "Its leg buckles beneath it!"
