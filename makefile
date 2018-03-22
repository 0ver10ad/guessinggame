num_len := $(shell cat guessinggame.sh | wc -l | sed 's/ //g')
build_date := $(shell date)

README.md:
	@echo "# Guessing Game\n" > README.md
	@echo "Build README.md at *$(build_date)*\n" >> README.md
	@echo "There are **$(num_len)** lines of code in guessinggame.sh\n" >> README.md
.PHONY: clean
clean:
	@rm README.md

