extends Spatial

func _ready():
	for i in range($Spheres.multimesh.instance_count):
		var position = Transform()
		position = position.translated(Vector3(randf() * 100 - 50, randf() * 50 - 25, randf() * 50 - 25))
		$Spheres.multimesh.set_instance_transform(i, position)
		$Spheres.multimesh.set_instance_custom_data(i, Color(randf(), randf(), randf(), randf()))
