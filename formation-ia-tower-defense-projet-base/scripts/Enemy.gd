extends Area2D
class_name Enemy

export (float) var speed = 1
export (float) var hitpoints = 20
export (String) var dijkstra
export (int) var reward = 30
var destination
var world

func _process(delta):
	if !dijkstra:
		print_debug("no dijkstra map assigned!")
		return
	z_index = position.y
	if get_node("/root/Main").state != "playing": return
#	var instanc = sceneExplosion.instance()
#	if is_instance_valid(instanc) :
#		self.add_child(instanc)
	if world.dijkstra.has(dijkstra):
		var distance = 0
		if destination:
			distance = position.distance_to(destination)
		var tile_map = world.tile_map
		var tile_pos = tile_map.world_to_map(position)
		var move_amount = delta * speed / world.get_cost(tile_pos)
		if (distance < move_amount):
			destination = tile_map.map_to_world(world.dijkstra[dijkstra].get_next(tile_pos))
		position = position.move_toward(destination, move_amount)
		var sprite = self.get_node_or_null("helice")
		if sprite:
			sprite.rotate(180)
#		if position.x > destination.x:
#			print(position.x)
		
func take_damage(amount):
	hitpoints -= amount
	if (hitpoints <= 0):
		
		var main = get_node("/root/Main")
		# on donne la récompense au joueur pour avoir tué un ennemi
		main.money += reward

# Add explosion
		var scene = load("res://explozion.tscn")
		var explosion = scene.instance()
		explosion.set_position(get_global_position())
		get_node("/root").add_child(explosion)

		queue_free()
	
func _exit_tree():
	world.remove_enemy(self)
	
