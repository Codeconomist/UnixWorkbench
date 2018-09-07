all:	README.md

README.md:
	echo "This is the \"guessinggame.sh\" Project" > README.md
	echo `date` >> README.md
	echo `cat guessinggame.sh | wc -l` >> README.md

clean:
	rm README.md
