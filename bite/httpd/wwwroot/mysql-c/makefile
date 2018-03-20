mysqlcgi:mysql_api.cpp main.cpp
	g++ -o $@ $^ -I ./mysql -L./lib -lmysqlclient #-lpthread -static 
.PHONY:clean
clean:
	rm -rf mysqlcgi
