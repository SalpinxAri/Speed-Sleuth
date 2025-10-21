extends Node2D

var suspect_name = "Adolphne Sax"
signal pressed


func _on_button_Madison_down() -> void:
	suspect_name = "Madison Woodard"
	pressed.emit()



func _on_button_Jared_down() -> void:
	suspect_name = "Jared Foley"
	pressed.emit()
	
	

func _on_button_Jago_down() -> void:
	suspect_name = "Jago Ramon"
	pressed.emit()


func _on_button_Aaron_down() -> void:
	suspect_name = "Aaron Horton"
	pressed.emit()


func _on_button_Claire_down() -> void:
	suspect_name = "Clair Horton"
	pressed.emit()


func _on_button_Adolphine_down() -> void:
	suspect_name = "Adolphine Sax"
	pressed.emit()
	

func _on_button_Josephine_down() -> void:
	suspect_name = "Josephine Aguire"
	pressed.emit()





	
