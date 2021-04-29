extends Area2D
class_name Shooter

export (float) var attack_range = 200
export (float) var attack_speed = 1
export (PackedScene) var projectile
var target
var parent

# Called when the node enters the scene tree for the first time.
func _ready():
	if attack_speed == 0:
		print_debug("attack speed 0!")
		return
	parent = get_node("..")
	var collision_shape = CollisionShape2D.new()
	var shape = CircleShape2D.new()
	shape.radius = attack_range
	collision_shape.set_shape(shape)
	add_child(collision_shape)
	var timer = Timer.new()
	add_child(timer)
	timer.start(1 / attack_speed)
	timer.connect("timeout", self, "shoot")


func shoot():	
	if get_node("/root/Main").state != "playing": return
	if target && !overlaps_area(target):
		target = null
	if !target:
		var overlapping = get_overlapping_areas()
		for obj in overlapping:
			target = obj
			break
	if target:
		if parent.get_node("MG2"):
			var sp = parent.get_node("MG2")
			sp.rotation_degrees = rad2deg((target.position - parent.position).angle())+90
		if parent.get_node("Missile_Launcher3"):
			var sp = parent.get_node("Missile_Launcher3")
			sp.rotation_degrees = rad2deg((target.position - parent.position).angle())+90
		var bullet = projectile.instance()
		var angleRad = (target.position-parent.position).angle()
		var angle = rad2deg(angleRad)
		bullet.rotation_degrees = angle
		parent.get_node("..").add_child(bullet)
		bullet.collision_layer = 0
		bullet.collision_mask = collision_mask	
		bullet.position = parent.position

		if parent.name == "Bomb":
#			print("position target : %s" % target.position.x)
#			print("position target : %s" % target.position.y)
			var positionComputedX = (target.position.x - parent.position.x)
			var positionComputedY = (target.position.y - parent.position.y)
#			print("position target : %s" % target.position.x)
#			print("position proche Y : %s" % positionComputedY)
			if positionComputedX < 0 || positionComputedY < 0:
				bullet.fire((target.position - parent.position).normalized())
				collision_mask = 4
				bullet.fire((target.position - parent.position).normalized())
				
				return
		bullet.fire((target.position - parent.position).normalized())
