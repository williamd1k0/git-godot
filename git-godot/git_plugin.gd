tool
extends EditorPlugin

var git_control = null
var button = null

func _enter_tree():
	git_control = preload("res://addons/git/git_control.tscn").instance()
	button = add_control_to_bottom_panel( git_control, "GIT" )
	
	button.connect("pressed", self, "_on_button_pressed")

func _exit_tree():
		git_control.free()

func _on_button_pressed():
	var git = OS.execute("git", ["status"], false)