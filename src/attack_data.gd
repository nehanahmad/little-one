extends Resource
class_name AttackData

@export var attack_name: String = ""
@export var description: String = ""

@export var damage_multiplier: float = 1.0
@export var stamina_cost: int = 0
@export var target_limb_override: State.Limb = State.Limb.NONE

# Prism sub-attack behavior — damage comes from StanceData's own multipliers, only the status differs per-attack
@export var has_prism_variant: bool = false
@export var prism_applies_status: bool = false
@export var prism_status_effect: State.StatusEffect = State.StatusEffect.NONE
@export var prism_miasma_cost: int = 0
