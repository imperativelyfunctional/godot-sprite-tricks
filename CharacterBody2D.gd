extends Sprite2D

const SPEED:int = 30

@onready
var player:CharacterBody2D = get_node("/root/Game/Player")

@onready
var animationPlayer: AnimationPlayer = get_node("Sprite2D/AnimationPlayer")

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

#func _ready():
#	animationPlayer.play("idle")
	
func _physics_process(delta):
	var direction = (player.global_position - global_position).normalized()
	position.x += direction.x * delta * SPEED
	position.y += direction.y * delta * SPEED
