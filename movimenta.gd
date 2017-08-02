extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var velocidade = 350

func _ready():
	set_process(true)
	pass
func _process(delta):
	var direita = 0
	var esquerda = 0
	
	if Input.is_action_pressed("direita"):
		direita = 1
	
	if Input.is_action_pressed("esquerda"):
		esquerda = -1
	
	set_pos(get_pos() + Vector2(velocidade,0)*delta*(direita + esquerda)) 
	
	pass
