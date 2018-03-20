.PHONY:all
all:cilent server
	
cilent:cilent.c shm.c secomm.c secomm.h comm.h
	gcc -o $@ $^
server:server.c shm.c secomm.h secomm.c comm.h
	gcc $^ -o $@
.PHONY:clean
clean:
	rm -rf cilent server 
