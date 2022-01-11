extends Control





# Called when the node enters the scene tree for the first time.
func _ready():
	start()
	

#triggered on ready. Can be changed to an Area Signal or whatever. It holds the first part of the dialogue.
func start():
	$char1_1.visible = true
	$textframechar1.visible=true
	$textChar1_1.visible = true

#The proceeding dialogue section of the code. It is linear for easy understanding and copying.	

func char2_1():
	$char1_1.visible = false
	$textframechar1.visible=false
	$textChar1_1.visible = false
	$char2_1.visible =true
	$textChar2_1.visible =true
	$textframechar2.visible = true

func char1_2():
	$char1_1.visible = true
	$textframechar1.visible=true
	$textChar1_2.visible = true
	$char2_1.visible =false
	$textChar2_1.visible =false
	$textframechar2.visible = false

func char2_2():
	$char1_1.visible = false
	$textframechar1.visible=false
	$textChar1_2.visible = false
	$char2_1.visible =true
	$textChar2_2.visible =true
	$textframechar2.visible = true

#the Input section of the code. It is also linear, allows endless elif cases and
# is checking the visibility of current text to decide, which func to start next.	
func _input(event):
	if Input.is_action_just_pressed("ui_accept") and $textChar1_1.visible == true:
		char2_1()
	elif Input.is_action_just_pressed("ui_accept") and $textChar2_1.visible == true:
		char1_2()
	elif Input.is_action_just_pressed("ui_accept") and $textChar1_2.visible == true:
		char2_2()
