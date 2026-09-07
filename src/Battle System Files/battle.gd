extends Control
signal textbox_closed

@export var enemy: EnemyData = null
@export var stance_data_list: Array[StanceData] = []
var current_stance: State.Stance = State.Stance.IDLE


var stance_data_map: Dictionary = {}

func _ready() -> void:
	for data in stance_data_list:
		stance_data_map[data.stance] = data
	set_health($MeterBox/HealthBar, State.abel_stats.current_health, State.abel_stats.max_health)

	$Enemy.initialize(enemy)

	$Textbox.hide()
	$PlayerPanel.hide()
	$StancePanel.hide()
	$AttackPanel.hide()
	$DescriptorPanel.hide()

	set_stance(State.Stance.IDLE)  # opening idle pose
	display_text(enemy.battle_start_text)
	await self.textbox_closed
	
	$Enemy.set_stance(enemy.starting_stance)
	display_text(enemy.enemy_name + " starts in " + stance_data_map[enemy.starting_stance].display_name)
	await self.textbox_closed
	
	$PlayerPanel.show()
	set_stance(State.starting_stance)

func _input(event):
	if (Input.is_action_just_pressed("ui_accept")) and $Textbox.visible:
		$Textbox.hide()
		emit_signal("textbox_closed")
	
func set_health (progress_bar, health, max_health):
	progress_bar.value = health
	progress_bar.max_value = max_health
	
func set_miasma (progress_bar, miasma, max_miasma):
	progress_bar.value = miasma
	progress_bar.max_value = max_miasma
	
func set_stamina (progress_bar, stamina, max_stamina):
	progress_bar.value = stamina
	progress_bar.max_value = max_stamina
	
func display_text(text):
	$Textbox.show()
	$Textbox/MarginContainer/Label.text=text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




####### Player Panel Buttons #######
func _on_stance_pressed() -> void:
	release_focus()
	$PlayerPanel.hide()
	$StancePanel.show()
	
	
func _on_run_pressed() -> void:
	get_viewport().gui_release_focus()
	display_text("You can not run away.")
	await self.textbox_closed
	$PlayerPanel.show()




####### Stance Script #######
func set_stance(stance: State.Stance) -> void:
	current_stance = stance
	var appearance = State.current_appearance

	# 1. Update the MC's actual sprite/animation
	match stance:
		State.Stance.IDLE:
			$battleStation/Abel.sprite_frames = appearance.idle_frames
		State.Stance.FOOLS_GUARD:
			$battleStation/Abel.sprite_frames = appearance.fools_guard_frames
		State.Stance.PLOW_SHORT:
			$battleStation/Abel.sprite_frames = appearance.plow_short_frames
		State.Stance.ROOF_STANCE:
			$battleStation/Abel.sprite_frames = appearance.roof_stance_frames
		State.Stance.PRISM_STANCE:
			$battleStation/Abel.sprite_frames = appearance.prism_stance_frames
	$battleStation/Abel.play("idle")

	
	update_stance_display(stance)

func update_stance_display(stance: State.Stance) -> void:
	var data = stance_data_map[stance]
	$MeterBox/StanceStat/StanceLabel.text = data.display_name
	$MeterBox/StanceStat/StanceIcon.texture = data.icon
	$MeterBox/StanceStat/StanceIcon.custom_minimum_size = data.icon_size

func change_enemy_stance(new_stance: State.Stance) -> void:
	$Enemy.set_stance(new_stance)
	$PlayerPanel.hide()
	display_text(enemy.enemy_name +" shifts to " + stance_data_map[new_stance].display_name)
	await self.textbox_closed
	$PlayerPanel.show()

func _on_fools_guard_pressed():
	release_focus()
	set_stance(State.Stance.FOOLS_GUARD)
	State.starting_stance = State.Stance.FOOLS_GUARD
	$StancePanel.hide()
	$PlayerPanel.show()

func _on_roof_stance_pressed():
	release_focus()
	set_stance(State.Stance.ROOF_STANCE)
	State.starting_stance = State.Stance.ROOF_STANCE
	$StancePanel.hide()
	$PlayerPanel.show()
	
func _on_plow_short_pressed():
	release_focus()
	set_stance(State.Stance.PLOW_SHORT)
	State.starting_stance = State.Stance.PLOW_SHORT
	$StancePanel.hide()
	$PlayerPanel.show()

func _on_prism_stance_pressed():
	release_focus()
	set_stance(State.Stance.PRISM_STANCE)
	State.starting_stance = State.Stance.PRISM_STANCE
	$StancePanel.hide()
	$PlayerPanel.show()
	
func _on_back_stance_pressed() -> void:
	release_focus()
	$StancePanel.hide()
	$PlayerPanel.show()
	
func _on_stance_button_hovered(stance: State.Stance) -> void:
	var data = stance_data_map[stance]
	show_descriptor(data.display_name, data.description)


####### Attack Script #######

func _on_attack_pressed() -> void:
	release_focus()
	$PlayerPanel.hide()
	populate_attack_panel()
	$AttackPanel.show()
	
	
func populate_attack_panel() -> void:
	var buttons = [
		$AttackPanel/Actions/Attack1Button,
		$AttackPanel/Actions/Attack2Button,
		$AttackPanel/Actions/Attack3Button,
		$AttackPanel/Actions/Attack4Button,
	]
	for i in buttons.size():
		if i < State.equipped_attacks.size():
			buttons[i].text = State.equipped_attacks[i].attack_name
			buttons[i].show()
		else:
			buttons[i].hide()  # not unlocked yet


func _on_back_attack_pressed() -> void:
	release_focus()
	$AttackPanel.hide()
	$PlayerPanel.show()
	
func _on_attack_button_hovered(index: int) -> void:
	if index < State.equipped_attacks.size():
		var atk = State.equipped_attacks[index]
		show_descriptor(atk.attack_name, atk.description)

	
####### Descriptor Script #######
@export var descriptor_offscreen_x: float = 820
@export var descriptor_onscreen_x: float = 610

func show_descriptor(title: String, description: String) -> void:
	$DescriptorPanel/DescriptorNameLabel.text = title
	$DescriptorPanel/DescriptorDescLabel.text = description
	$DescriptorPanel.show()
	$DescriptorPanel.position.x = descriptor_offscreen_x
	$DescriptorPanel.rotation_degrees = -5
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property($DescriptorPanel, "position:x", descriptor_onscreen_x, 0.25).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	tween.tween_property($DescriptorPanel, "rotation_degrees", 0.0, 0.25).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

func hide_descriptor() -> void:
	var tween = create_tween()
	tween.tween_property($DescriptorPanel, "position:x", descriptor_offscreen_x, 0.2).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN)
	await tween.finished
	$DescriptorPanel.hide()
