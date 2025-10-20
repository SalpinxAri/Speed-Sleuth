extends TextureRect

var TEXTURES = {
	"Madison Woodard" : "res://assets/sprites/suspects/Maddison Woodard Neutral.png",
	"Jared Foley" : "res://assets/sprites/suspects/Jared Foley Witness.png",
	"Jago Ramon" : "res://assets/sprites/suspects/Jago Ramon Witness.png",
	"Aaron Horton" : "res://assets/sprites/suspects/Aaron Horton Witness.png",
	"Clair Horton" : "res://assets/sprites/suspects/Clair Horton Witness.png",
	"Adolphine Sax" : "res://assets/sprites/suspects/Adolphne Sax Neutral.png",
	"Josephine Aguire" : "res://assets/sprites/suspects/Josephine Aguirre Neutral.png"
	}
	
	
var button_counter = 0





# Add a function here such that when one of the buttons on the other part is pressed, \
# it changes the image to the correct one. Also get the rest of the images in here!


func _on_ask_questions_choice_changed() -> void:
	self.texture = load(TEXTURES[$"../..".suspect_name])
