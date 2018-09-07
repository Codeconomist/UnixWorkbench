all:	README.md

README.md:
	@echo "This is the \"guessinggame.sh\" Project for Coursera: The Unix Workbench" > README.md
	@echo "This markdown was made on" `date` >> README.md
	@echo "The script contains" `cat guessinggame.sh | wc -l` "lines of code" >> README.md

clean:
	rm README.md
