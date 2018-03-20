#include<stdio.h>
#include <sys/types.h>          
#include <sys/socket.h>
#include <netinet/in.h>
#include<stdlib.h>
int main(int argc,char*argv[])
{
   if(argc!=3)
   {
     printf("please enter ip port\n");
     exit(1);
   }
   int sock=socket(AF_INET,SOCK_DGRAM,0);
   char buff[1024];
   struct sockaddr_in server;
   server.sin_family=AF_INET;
   server.sin_port=htons(atoi(argv[2]));
   server.sin_addr.s_addr=inet_addr(argv[1]);
   socklen_t len=sizeof(struct sockaddr_in);
   int size=0;
   while(1){
   printf("please Enter #");
   fflush(stdout);
   size=read(0,buff,1024);
   buff[size]=0;
   sendto(sock,buff,1024,0,(struct sockaddr*)&server,len);
   size=recvfrom(sock,buff,1024,0,(struct sockaddr*)&server,&len);
   buff[size]=0;
   printf("server say#%s",buff);
  }
  return 0;
}
   
