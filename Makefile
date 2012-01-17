all:
	rake generate
	cp ~/repos/git/hub/bootstrap/bootstrap.min.css source/css/
upload:
	rake deploy
