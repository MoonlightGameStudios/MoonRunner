extends LineEdit

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_accept") and has_focus():
		handle_enter_pressed()

func handle_enter_pressed():
	var entered_text = get_text()
	print("Ingevoerde tekst:", entered_text)
	# Voer verdere acties uit op basis van de ingevoerde tekst
