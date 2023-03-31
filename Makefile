#Makefile for the .dotfiles

linux: clean
	chmod 700 ./bin/linux.sh
	./bin/linux.sh

clean:
	chmod 700 ./bin/cleanup.sh
	./bin/cleanup.sh
