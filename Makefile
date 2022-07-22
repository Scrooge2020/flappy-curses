flappy-curses: flappy-curses.c constants.h draw.h physics.h
	gcc flappy-curses.c -o flappy-curses -march=native -Os -pipe -lncurses -ltinfo

install: flappy-curses
	cp ./flappy-curses /usr/bin/flappy-curses
	chmod 755 /usr/bin/flappy-curses

uninstall:
	rm /usr/bin/flappy-curses

clean:
	rm ./flappy-curses

.PHONY: install uninstall clean
