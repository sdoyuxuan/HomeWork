.PHONY:all
all:cilent server
	
server:server.c
	gcc -o $@ $^ -lpthread
cilent:cilent.c
	gcc -o $@ $^
.PHONY:clean
clean:
	rm -rf server cilent
