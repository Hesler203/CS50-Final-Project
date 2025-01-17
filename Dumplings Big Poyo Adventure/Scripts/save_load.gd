extends Node


const SAVEFILE = "res://savefile.txt"  

var highscore = 0
var total_seeb = 0



func save_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.WRITE_READ)
	file.store_32(total_seeb)
	file.store_16(highscore)
	
	
func load_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		total_seeb = file.get_32()
		highscore = file.get_16()
