extends Enemy



func _process(delta):
	if !dijkstra:
		print_debug("no dijkstra map assigned!")
		return
	z_index = position.y
	if get_node("/root/Main").state != "playing": return
	if world.dijkstra.has(dijkstra):
		var distance = 0
		if destination:
			distance = position.distance_to(destination)
		var tile_map = world.tile_map
		var tile_pos = tile_map.world_to_map(position)
		var move_amount = delta * speed / 1
		if (distance < move_amount):
			destination = tile_map.map_to_world(world.dijkstra[dijkstra].get_next_special(tile_pos))
			position = position.move_toward(destination, move_amount)

func take_damage(amount):
	hitpoints -= amount
	if (hitpoints <= 0):
		queue_free()
		var main = get_node("/root/Main")
		# on donne la récompense au joueur pour avoir tué un ennemi
		main.money += reward
func init(speed_in,hitpoints_in,reward_in):
	speed = speed_in
	hitpoints = hitpoints_in
	reward = reward_in
func _exit_tree():
	world.remove_enemy(self)
