extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d = $Sprite2D
@onready var goose = $Sprite2D2


# Definieer de startpositie
var start_position = Vector2(100, 5)

func _ready():
	# Stel de startpositie in bij het laden van de sprite
	set_position(start_position)
	#get_node("/root/character_select").connect("animation_changed", self, "_on_animation_changed")

# Functie om de sprite terug te brengen naar de startpositie
func reset_to_start_position():
	set_position(start_position)

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		sprite_2d.animation = "jumping"

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		sprite_2d.animation = "running"
		goose.animation = "running"
	else:
		velocity.x = move_toward(velocity.x, 0, 12)
		sprite_2d.animation = "idle"
		goose.animation = "idle"
		
	if Input.is_action_just_pressed("restart"):
		print('r is presed')
		reset_to_start_position()
		
		# Deze functie kan worden opgeroepen wanneer een knop wordt ingedrukt of een bepaalde voorwaarde wordt voldaan
		
	move_and_slide()

	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
	goose.flip_h = isLeft
	




# Methode die wordt aangeroepen wanneer het signaal wordt ontvangen
func _on_animation_changed(new_animation):
	# Verander de animatie van de AnimatedSprite2D
	$AnimatedSprite2D.animation = str(new_animation)


