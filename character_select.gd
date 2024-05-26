extends Button

func _ready():
	# Voeg hier de code toe die wordt uitgevoerd wanneer de knop klaar is met laden
	print('knop is geladen')
	pass


func _on_pressed():
	print("Knop gans is ingedrukt!")
	get_tree().change_scene("res://main_goose.tscn")


func _on_astronaut_pressed():
	print("Knop astornaut is ingedrukt!")
	get_tree().change_scene("res://main.tscn")
	

