CCPP=g++
CFLAGS=-std=c++1z `sdl2-config --libs` -Wall -lSDL2_image -lSDL2_mixer -lSDL2_ttf -lm -ggdb3
DEPS=Game.h State.h Sprite.h Music.h Constants.h
OBJ=Main.o Game.o State.o Sprite.o Music.o

main: $(OBJ)
	$(CCPP) -o $@ $^ $(CFLAGS)

main.o: main.cpp $(DEPS)
	$(CCPP) -c main.cpp $(CFLAGS)

Game.o: Game.cpp $(DEPS)
	$(CCPP) -c Game.cpp $(CFLAGS)

State.o: State.cpp $(DEPS)
	$(CCPP) -c State.cpp $(CFLAGS)

Sprite.o: Sprite.cpp $(DEPS)
	$(CCPP) -c Sprite.cpp $(CFLAGS)

Music.o: Music.cpp $(DEPS)
	$(CCPP) -c Music.cpp $(CFLAGS)

.PHONY: clean

clean:
	rm -f *.o *.obj main main.exe