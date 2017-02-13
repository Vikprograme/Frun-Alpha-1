a=10
r=3
player=0

setup = ->
	createCanvas 1000,750
	player= new Player 100,100,0,0

draw= ->
	background 0

	player.draw()
	fc 0
	sc 1

	rect 30,20,a,a,r

class Player
	constructor : (@x,@y,@dir,@v) ->
	

	draw : ->

		push()
		translate @x,@y
		fc()
		sc 1
		
		
		if  keyIsDown LEFT_ARROW
			@x+=5
		if  keyIsDown RIGHT_ARROW
			@x-=5
		if  keyIsDown UP_ARROW
			@y+=5
		if  keyIsDown DOWN_ARROW
			@y-=5

		@x+=@v*cos @dir
		@y+=@v*sin @dir
		
		rect @x,@y,10,10,20

		pop()