extends Node


var Player;
var GameState;
var GUI;

var level1 = "res://Videojoc/Escenas/Level1.tscn"
var level2 = "res://Videojoc/Escenas/Level2.tscn"
var level3 = "res://Videojoc/Escenas/Level3.tscn"
var menu = "res://Videojoc/Escenas/Menu.tscn"
var menuLevels = "res://Videojoc/Escenas/LevelsMenu.tscn"
var gameOver = "res://Videojoc/Escenas/GameOver.tscn"
var gameWin = "res://Videojoc/Escenas/GameWin.tscn"
var endGame = "res://Videojoc/Escenas/EndGame.tscn"

var score = 0
var score1
var score2
var score3
var actualLevel;

func _ready():
	pass # Replace with function body.


