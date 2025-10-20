extends Control

var textures = [
	"res://assets/sprites/Case1_Intro_cutscene/Case2Intro1Img1.jpg",
 	"res://assets/sprites/Case1_Intro_cutscene/Case2Intro1Img2.jpg",
	"res://assets/sprites/Case1_Intro_cutscene/Case2Intro1Img3.jpg",
	"res://assets/sprites/Case1_Intro_cutscene/Case2Intro1Img4.jpg"]
var button_counter = 0

func _on_continue_button_pressed() -> void:
	button_counter += 1
	if button_counter == 4:
		get_tree().change_scene_to_file("res://scenes/pre_case_screen.tscn")
	else:
		self.texture = load(textures[button_counter])
