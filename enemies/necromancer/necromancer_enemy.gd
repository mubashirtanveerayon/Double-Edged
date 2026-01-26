extends Enemy


func _ready():
	super._ready()
	$EnemyStateMachine/Shoot/Spawner.deck=deck


func _on_character_took_damage(damage_dealt: Variant) -> void:
	if not $AudioStreamPlayer2D.playing:
		$AudioStreamPlayer2D.play()
