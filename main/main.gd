extends WaveSystem
@export var cardmenu_scene:PackedScene

func on_state_execution_finished():
	var cardmenu = cardmenu_scene.instantiate()
	add_child(cardmenu)
	super.on_state_execution_finished()



func _on_player_tree_exiting() -> void:
	get_tree().change_scene_to_file("res://ui/gameoverscreen.tscn")
