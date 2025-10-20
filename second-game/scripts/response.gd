extends Label

var suspect_name = ""


func _on_ask_questions_choice_changed() -> void:
	suspect_name = $"../..".suspect_name
	match suspect_name:
		"Madison Woodard":
			self.text = "A nurse at the hospital was in charge of looking over the children in the nursery. Always very diligent in her job, has complained of wanting a child but not being able to conceive for the last week, has been working at the hospital for 4 years."
			
		"Adolphine Sax":
			self.text = "A patient at hospital, he was seen out of place near the nursery. When questioned he stopped, then replied suspiciously before turning and walking away. He was discharged an hour ago but was found still lingering around the hospital."
			
		"Josephine Aguire":
			self.text = "An EMT working for the hospital, recently arrived with a patient and stuck around after to have a discussion with the doctor about the patient. Went missing for 30 minutes, claiming she was using the restroom."
			
		_:
			self.text = "A witness at the scene of the crime... Ask them what they know."
