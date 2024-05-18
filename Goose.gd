extends Button

var skin = 0

func _ready():
	# Voeg hier de code toe die wordt uitgevoerd wanneer de knop klaar is met laden
	print('knop is geladen')
	pass

# Deze functie wordt automatisch opgeroepen wanneer de knop wordt ingedrukt
func _on_Button_pressed():
	# Voer hier de gewenste actie uit wanneer de knop wordt ingedrukt
	print(skin)
	button_pressed_action()

func button_pressed_action():
	# Dit is een voorbeeld van een actie die wordt uitgevoerd wanneer de knop wordt ingedrukt
	print("Knop is ingedrukt!")
	skin += 1
	print(skin)
	
	# Voer hier verdere acties uit op basis van de knopdruk


func _on_pressed():
	print("Knop gans is ingedrukt!")
	skin = 1
	print(skin)


func _on_astronaut_pressed():
	print("Knop astornaut is ingedrukt!")
	skin = 0
	print(skin)
	

