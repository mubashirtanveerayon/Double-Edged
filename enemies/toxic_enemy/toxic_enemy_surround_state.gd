extends "res://utils/misc/surround_state.gd"


func enter():
	super.enter()
	$"../ReleaseToxin/CPUParticles2D".one_shot=true
	$"../ReleaseToxin/CPUParticles2D".emitting=false
