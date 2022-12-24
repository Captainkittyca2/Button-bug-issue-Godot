extends Control

func _ready() -> void:
	$Timer.start()

func _on_Button_pressed() -> void:
	$TextureRect2.visible = true
	$TextureRect3.visible = true
	$TextureRect/AnimationPlayer.play("dissapear")
	$TextureRect2/AnimationPlayer.play("move")
	$TextureRect3/AnimationPlayer.play("move")
	$Button.queue_free()

func _on_Timer_timeout() -> void:
	$Button.visible = true
