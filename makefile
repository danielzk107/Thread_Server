start: Server.o
	make Server.o
Server.o: Server.c
	#ifndef _Server_o
	gcc -pthread -c Server.c
	#endif
server:
	gcc -pthread -o server Server.c
all:
	make Server.o
	gcc -pthread -o server Server.o
clean:
	rm *.o
	rm server
