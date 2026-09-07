extends Node2D
class_name Enemy

@export var enemy_data: EnemyData
var current_stance: State.Stance = State.Stance.IDLE

func initialize(data: EnemyData) -> void:
	enemy_data = data
	if enemy_data:
		$EnemySprite.sprite_frames = enemy_data.idle_sprite
		$EnemySprite.play("idle")
	else:
		push_warning("No enemy data assigned!")
		
		# In Enemy.tscn's script
func set_stance(stance: State.Stance) -> void:
	current_stance = stance
	$EnemySprite.sprite_frames = enemy_data.get_stance_sprite(stance)
	$EnemySprite.play("idle")

func play_attack() -> void:
	$AnimatedSprite2D.play("attack")  # shared across all stances

func _ready() -> void:
	pass  # no longer auto-applies on ready; battle.gd calls initialize() explicitly
