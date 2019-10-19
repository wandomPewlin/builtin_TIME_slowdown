extends Spatial

func _ready():
	for i in range($Spheres.multimesh.instance_count):
		var position = Transform()
		position = position.translated(Vector3(randf() * 100 - 75, randf() * 75 - 25, randf() * 75 - 25))
		$Spheres.multimesh.set_instance_transform(i, position)
		$Spheres.multimesh.set_instance_custom_data(i, Color(randf(), randf(), randf(), randf()))

var time = 0.0
func _process(delta):
	time += delta
	$Spheres.multimesh.mesh.surface_get_material(0).set_shader_param("time",time)
