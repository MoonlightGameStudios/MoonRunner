extends Node


var audio_player: AudioStreamPlayer

func _ready():
	# Zoek de AudioStreamPlayer in de scene-tree en sla het op in de variabele
	audio_player = get_node("/root/Node/AudioStreamPlayer") # Vervang "path/to/your/audio_stream_player" met de daadwerkelijke pad van de AudioStreamPlayer in de scene-tree

func _input(_event):
	# Controleer of het een InputEventKey is en of de toets 'A' is ingedrukt
	if Input.is_action_just_pressed("pause"):
		# Stop het afspelen van de AudioStreamPlayer
		audio_player.stop()
	
	if Input.is_action_just_pressed("play"):
		# Start het afspelen van de AudioStreamPlayer
		audio_player.play()

