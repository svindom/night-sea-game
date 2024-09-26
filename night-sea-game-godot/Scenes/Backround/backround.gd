extends Sprite2D


@onready var sun_reflection_animation: AnimatedSprite2D = $SunReflectionAnimation
@onready var falling_star: AnimatedSprite2D = $FallingStar
@onready var fall_star_down_animation: AnimationPlayer = $FallStarDownAnimation



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	falling_star.hide()
	play_sun_reflection_animation()


func play_sun_reflection_animation() -> void:
	sun_reflection_animation.play()


func _on_timer_timeout() -> void:
	falling_star.show()
	falling_star.play()
	fall_star_down_animation.play("falling_star")
