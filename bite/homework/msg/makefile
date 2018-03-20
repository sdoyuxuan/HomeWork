.PHONY:all
all : cilent server
	
cilent:cilent.c comm.h comm.c
	gcc -o $@ $^
server:server.c comm.h comm.c
	gcc -o $@ $^                                                       
.PHONY:clean
clean:
	rm -rf server cilent 
