extends WorldEnvironment

var x = 0
var switch = false

func _process(delta):
	if switch:
		x = x + delta
	else:
		x = x - delta
		
	if x >= 360:
		x = 360
		switch = !switch
	
	if x <= 0:
		x = 0
		switch = !switch
	
	environment.sky_rotation = Vector3(x, 0, 0) * delta * 2
