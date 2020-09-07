
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo '# Guessing Game Bash Script \n' > README.md
	echo '* This file was executed at: $(shell date +%Y-%m-%d:%H:%M:%S)\n' >> README.md
	echo '* There are $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines in guessinggame' >> README.md
clean:
	rm README.md
