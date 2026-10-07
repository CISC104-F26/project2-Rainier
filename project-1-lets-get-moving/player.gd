extends Sprite2D
@export var movement_speed=100
@export var normal_speed=100
@export var sprint_speed=300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("sprint"):
		movement_speed=normal_speed+sprint_speed
	if not Input.is_action_pressed("sprint"):
		movement_speed=normal_speed
	
	if Input.is_action_pressed("move_right"):
		position=position+Vector2(1,0)*movement_speed*delta
	if Input.is_action_pressed("move_left"):
		position=position+Vector2(-1,0)*movement_speed*delta
	if Input.is_action_pressed("move_up"):
		position=position+Vector2(0,-1)*movement_speed*delta
	if Input.is_action_pressed("move_down"):
		position=position+Vector2(0,1)*movement_speed*delta
	if Input.is_action_just_pressed("teleport"):
		global_position=get_global_mouse_position()
	
	#Press "i" to change the visibility of the sprite
	if Input.is_action_just_pressed("toggle_visibility"):
		if visible==true:
			visible=false
		else:
			visible=true
		
