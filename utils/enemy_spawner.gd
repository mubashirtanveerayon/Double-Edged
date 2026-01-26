extends Spawner

class_name EnemySpawner
func _ready():
	super._ready()
	spawned.connect(on_enemy_spawned)

func on_enemy_spawned(enemy):
	if enemy is Enemy:
		enemy.destroyed.connect(on_enemy_destroyed)
		
func on_enemy_destroyed(point,pos):
	Global.points += point
