extends Node

signal animation_changed # Het signaal heeft geen parameters nodig

func change_animation(skin):
	# Wijzig de variabele en zend het signaal uit
	emit_signal("animation_changed", skin)

