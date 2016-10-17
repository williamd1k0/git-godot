tool
extends Control

var commit_text = null

func _ready():
	commit_text = get_node("commit_msg")

func _on_commit_pressed():
	if commit_text.get_text() != "":
		var git = OS.execute("git", ["add","--all"], true)
		var git2 = OS.execute("git", ["commit","-m", commit_text.get_text()], false)