extends Area2D

var start_position: Vector2
var time := 0.0

func _ready():
	start_position = position

func _process(delta):
	time += delta
	
	var radius := 5.0
	var speed := 2.5
	
	position.x = start_position.x + cos(time * speed) * radius
	position.y = start_position.y + sin(time * speed) * radius

func _on_body_entered(body):
	if body is CharacterBody2D:
		get_parent().get_node("CoinLabel").add_coin()
		get_parent().get_node("PickupSound").play()
		queue_free()
