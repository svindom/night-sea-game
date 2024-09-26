extends Area2D


@export var gravity_force: float = 100.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	add_gravity_force(delta)


func add_gravity_force(delta: float) -> void:
	position.y += gravity_force * delta
