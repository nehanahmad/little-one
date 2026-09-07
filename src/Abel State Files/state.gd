extends Node

enum Stance { IDLE, FOOLS_GUARD, PLOW_SHORT, ROOF_STANCE, PRISM_STANCE }
enum Limb {NONE, HEAD, HAND, LEG}
enum StatusEffect { NONE, BLIGHT, PLAGUE, BLEED, ROT, WORMS }
var abel_stats: CombatantStats = preload("res://src/Battle System Files/abel_stats.tres")
var current_appearance: AbelAppearance = preload("res://src/Abel State Files/Abel_Appearances.tres")
var starting_stance: Stance = Stance.FOOLS_GUARD
var equipped_attacks: Array[AttackData] = []  # 4 slots, filled via preload or an equip menu later

#Gonna use this when I add an attack unlocking system
func unlock_attack(attack: AttackData) -> void:
	if attack not in equipped_attacks:
		equipped_attacks.append(attack)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
