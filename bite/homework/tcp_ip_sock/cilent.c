#include<stdio.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<stdlib.h>
#include<string.h>
int main(int argv,const char*arg[])
{
   int req_sock=socket(AF_INET,SOCK_STREAM,0);
   struct sockaddr_in sock_in;
   sock_in.sin_family=AF_INET;
   sock_in.sin_port=  htons(atoi(arg[2]));
   sock_in.sin_addr.s_addr=inet_addr(arg[1]);
   socklen_t len=sizeof(sock_in);
   connect(req_sock,(struct sockaddr*)&sock_in,len);
   char buf[1024];
   memset(buf,0,1024);
   while(1)
   {  
     printf("please Enter:");
     fflush(stdout); 
     ssize_t s=read(0,buf,sizeof(buf));
     buf[s]=0;
     s=write(req_sock,buf,s);
     if(s<0)
      {
      perror("write");
      exit(1);
     }
     s=read(req_sock,buf,sizeof(buf));
     if(s>0)
     {
       buf[s]=0;
       if(strcmp(buf,"quit")==0)break;
       printf("server say:%s",buf);
       fflush(stdout);
     }
   }
   return 0;
   close(req_sock);
}

