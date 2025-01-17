extends Node


@onready var score_label: Label = $ScoreLabel

var score = 0



func add_point():
	score += 1
	
	if score == 1:
		score_label.text = """You collected
		%s seeb """ % str(score)
		
	elif score < 10:
		score_label.text = """You collected
		 %s seebs""" % str(score)
	
	else:
		score_label.text = """You collected
		-  %s seebs """ % str(score)
		
