#include<stdio.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<stdlib.h>
#include<string.h>
#include <pthread.h>
int startup(const char*ip,const char* port)
{
    int sock=-1;
    if((sock=socket(AF_INET,SOCK_STREAM,0))==-1)
    {
      perror("socket");
      exit(1);
    }
    struct sockaddr_in sock_addr;
    socklen_t len=sizeof(sock_addr);
    sock_addr.sin_family = AF_INET;
    sock_addr.sin_port= htons(atoi(port));
    sock_addr.sin_addr.s_addr= inet_addr(ip);
    if((bind(sock,(const struct sockaddr * )&sock_addr,len))<0)
     {
     perror("bind");
      exit(2);
     }
    if((listen(sock,0))<0){
      perror("listen");
      exit(3);
     }
    return sock;
}
void usesage(const char *p)
{
   printf("correct : %s ip  port",p);
}
void* Accept(void * arg)
{
    int answer_sock=(int)arg;
       char buf[1024];
       memset(buf,0,1024);
        ssize_t s;
      while(1)
      {
     if((s=read(answer_sock,buf,sizeof(buf)))>0)
       {
           buf[s]=0;
           printf("cilent %s",buf);
           printf("please Enter:");
           fflush(stdout);
           s=read(0,buf,sizeof(buf));
           answer_sock=(int)arg;
           write(answer_sock,buf,s);
       }
       else if(s==0)
      {
        printf(" cilent quit\n");
        break;
      }
      else
      {
        perror("read");
        pthread_exit((void*)1);
      }
     }
     close(answer_sock);
     return (void*)1;
}
int main(int argvs,const char*arg[])
{
     if(argvs!=3)
      {
        usesage(arg[0]);
        exit(4);
      }
     int listen=startup(arg[1],arg[2]);
     struct sockaddr_in server;
     socklen_t len=sizeof(struct sockaddr_in);
     while(1)
    {
     int answer_sock=accept(listen,(struct sockaddr *)&server,&len);
     printf(" yeah cilent success!\n");
     pthread_t tid;
     pthread_create(&tid,NULL,Accept,(void*)answer_sock);
     pthread_detach(tid);
    }
   close(listen);
   return 0;
}

