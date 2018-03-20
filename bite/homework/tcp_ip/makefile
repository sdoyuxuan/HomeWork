.PHONY:all
all:cilent server
		
server: server.c
	gcc -o $@ $^
cilent: cilent.c
	gcc -o $@ $^
.PHONY:clean
clean:
	rm -rf cilent server
