extends OptionButton

@export var suspect_name_path:NodePath

var suspect_name = "Adolphne Sax"
var is_suspect = false

var questions = {"Madison Woodard": 1, "Adolphine Sax": 1, "Josephine Aguire": 1}
# Need to import these based on which person it is. 
var questions_text = []

#TODO:
#Make the questions list become true as you gather the quesitons



func _on_ask_questions_choice_changed() -> void:
	suspect_name = get_node(suspect_name_path).suspect_name
	match suspect_name:
		"Madison Woodard":
			is_suspect = true
			questions_text = [
				"Where were you at the time of the crime?",
				"How long have you struggled with infertility?",
				"How long have you worked at the hospital?",
				"Would anybody be able to provide an alibi for you during the time frame the child went missing?",
				"Where do you work in the hospital?"
			]
		"Adolphine Sax":
			is_suspect = true
			questions_text = [
				"Where were you at the time of the crime?",
				"Why did you not leave once you were discharged?",
				"What were you doing by the nursery?",
				"What injury originally got you in as a patient today?",
				"Did anybody see you during the time the crime was committed?"
			]
		"Josephine Aguire":
			is_suspect = true
			questions_text = [
				"Where were you at the time of the crime?",
				"Where did you go during the time you were not seen by the other EMTs or the doctors?",
				"Why were you outside of the Horton family's labor and delivery room?",
				"How long have you been working for your EMT company?",
				"Do you have any children of your own, or are you looking to have children of your own?"
			]
		_:
			is_suspect = false
			questions_text = [
				"What did you witness?"
			]
		
	main_stuff()
	
func main_stuff() -> void:
	if is_suspect:
		self.clear()
		self.add_item("Pick a question", 0)
		for i in range(5):
			if i < questions[suspect_name]:
				self.add_item(questions_text[i], i+1)
	else:
		self.clear()
		self.add_item(questions_text[0], 1)




func _on_button_pressed() -> void:
	if is_suspect and questions[suspect_name] < 5:
		self.add_item(questions_text[questions[suspect_name]])
		questions[suspect_name] += 1
