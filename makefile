README.md: guessinggame.sh
	touch README.md
	echo "# Guessingame" > README.md
	echo "Make was run at  `date`" >> README.md
	echo "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md
clean:
	rm README.md