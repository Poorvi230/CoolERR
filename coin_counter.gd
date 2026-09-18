extends Label

var coins := 0

func _ready():
	add_to_group("coin_counter")
	text = "Coins: 0"

func add_coin():
	coins += 1
	text = "Coins: " + str(coins)
