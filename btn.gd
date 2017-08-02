extends Panel

var controle = 0

func _ready():
	get_node("Button").connect("pressed",self,"_clicado")
	pass
func _clicado():
	if controle == 1:
		get_node("Label").set_text("")
		controle = 0
	else:
		get_node("Label").set_text("Hello World")
		controle = controle + 1
	pass
