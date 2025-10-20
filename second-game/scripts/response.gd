extends Label

var suspect_name = ""
var question = 0

var responses = {
	"Madison Woodard": [
		"I was taking my lunch break, I grabbed food and went to eat in a less occupied area.",
		"I suppose my whole life but I’ve only been made aware of it in recent years after me and my husband began trying for a child. Why?",
		"Four years, I got a job here right out of college, I love the work I do here.",
		"Probably not, I saw a few people in our cafeteria but after I left I haven't seen anybody. Our camera system went down today so we don't have any recordings either.",
		"I’ve worked in the nursery since I first started here. I don't take care of the sicker babies in need of more care, but I have more patient interaction than them which I've always enjoyed more."
	],
	"Adolphine Sax": [
		"I was talking to a nurse about the recovery process once I'm out of the hospital, I don't want to come back anytime soon.",
		"I couldn’t remember how to take care of my cast once I left, I was looking around for a nurse to ask. Yes, I was looking for a nurse for an hour.",
		"I was just looking for my.. well it doesn't matter. it's a large open window. No, there's nothing suspicious about looking into a hospital's nursery, you're meant to look.",
		"I fell off a wall, broke my arm, pretty typical shit. What a stupid question, what does it matter to you anyways?",
		"Yes, a nurse, I don't remember her name. No, I don't remember what she looked like. Do you remember what every person you talk to looks like? I doubt it."
	],
	"Josephine Aguire": [
		"I was in the restroom, being an EMT can be a busy job so I try to get to the bathroom whenever I can.",
		"Well y'know I was in the bathroom, and then I just wandered around a bit checking out the hospital. I'm new to town so I'd never been in that hospital before, just wanted to see what it looked like.",
		"I heard the big commotion after the birth when I first arrived at the hospital, thought I'd check out who was in the room. Cant blame a girl for being curious can you?",
		"This company? Uhh, probably only about 3 months now I think. But I've been working as an EMT for about 7 years total, just moved out of my hometown to get a change of scenery after a bad breakup.",
		"After my fiance left me I haven't been very interested in having children on my own recently. But I did talk with him about having children once we were married. I think I’d like to one day, just not today."
	],
	"Jared Foley": [
		"I’m the head EMT in the truck Josephine works in, I don't think the girl could do it. Did she tell you her fiance just broke up with her? Pretty rough, I doubt she'd want a newborn child to add on to all of that stress, plus being in a new city. Granted I've only known her briefly and I wasn't in the right ward of the hospital to see anything, but I’m pretty sure my EMT is innocent."
	],
	"Jago Ramon": [
		"I didn't see much, I was leaving for my lunch break just like Madison, a new group was supposed to change out with us so we could both go. I saw a random dude walk by the nursery just before the change, asked him what was happening and he ran off, weird dude. Once the new nurses arrived I headed out for lunch, saw Madison in the cafeteria, we didn't eat together though."
	],
	"Aaron Horton": [
		"It was that nurse, Maddelyn or whatever the hell her name was. I know it was her, she was looking at my wife. The little bitch must’ve been jealous and thought she could make off with her kid. Im done answering your questions, get the fuck out of my face!"
	],
	"Clair Horton": [
		"It was probably that EMT, I don't know what business she had outside our door but she shouldn't have been peering in! I just can't right now, i-it’s too much, my baby is missing. My poor little baby! Her tiny hands and her adorable face, it reminds me of her biological father. Please, please! Bring my baby back to me!"
	]
}





@export var nodepath:NodePath

func _on_ask_questions_choice_changed() -> void:
	suspect_name = $"../..".suspect_name
	match suspect_name:
		"Madison Woodard":
			self.text = "A nurse at the hospital who was in charge of looking over the children in the nursery. Always very diligent in her job, but she has complained of wanting a child but not being able to conceive for the last week."
			
		"Adolphine Sax":
			self.text = "A patient at hospital, he was seen out of place near the nursery. When questioned he stopped, then replied suspiciously before turning and walking away. He was discharged an hour ago but was found still lingering around the hospital."
			
		"Josephine Aguire":
			self.text = "An EMT working for the hospital, recently arrived with a patient and stuck around after to have a discussion with the doctor about the patient. Went missing for 30 minutes, claiming she was using the restroom."
			
		"Jared Foley":
			self.text = "The head EMT, and a witness to the crime. Ask him what he knows..."
			
		"Jago Ramon":
			self.text = "A nurse at the hospital, and a witness to the crime. Ask him what he knows..."
			
		"Aaron Horton":
			self.text = "The step-father of the missing child, and a witness to the crime. Ask him what he knows..."
			
		"Clair Horton":
			self.text = "The mother of the missing child, and a witness to the crime. Ask her what she knows..."


func _on_button_pressed() -> void:
	self.text = responses[suspect_name][get_node(nodepath).get_selected_id()-1]
