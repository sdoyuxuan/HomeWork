#include<stdio.h>
#include<sys/socket.h>
#include<sys/types.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/epoll.h>
#include <stdlib.h>
#define SIZE 10240
void usege(const char * arg)
{
   printf("%s   ip  port\n",arg);
}
typedef struct epoll_buff{
int fd;
char buf [SIZE];
} epoll_buf,*epoll_buf_p;
epoll_buf_p alloc(int fd)
{
      size_t len=sizeof(struct epoll_buff);
 //     printf("size:%d\n",len);
      epoll_buf_p ret =(epoll_buf_p) malloc(len);
      if (ret ==NULL) {
      perror("malloc");   
      exit(10);
      }
      ret->fd=fd;
      return ret;
}
int startup(const char * ip,const char * port)
{
    int fd = socket(AF_INET,SOCK_STREAM,0);
    if(fd<0) {
    perror("socket");
    exit(1);
   }
   int opt = 1;
   setsockopt(fd,SOL_SOCKET,SO_REUSEADDR,&opt,sizeof(opt));
   struct sockaddr_in sock_addr;
   sock_addr.sin_family=AF_INET;
   sock_addr.sin_port = htons(atoi(port));
   sock_addr.sin_addr.s_addr=inet_addr(ip);
   socklen_t len=sizeof(sock_addr); 
   if((bind(fd,(struct sockaddr*)&sock_addr,len))<0)
   {
     perror("bind");
     exit(2);
   }
   if(listen(fd,128)<0)
   {
     perror("listen");
     exit(3);
   }
   return fd;
}

int main(int argv,const char * args[])
{
   if(argv != 3)
   {
     usege(args[0]);
     exit(4);
   }
   int listen_sock=startup(args[1],args[2]);
   int epfd=epoll_create(256);
 //  printf("lsock%d , epfd%d\n",listen_sock,epfd);
   if(epfd<0)
   { perror("epoll_create");}
   struct epoll_event ev;
   struct epoll_event env[32];
   ev.events=EPOLLIN;
   ev.data.ptr=alloc(listen_sock);
   if(epoll_ctl(epfd, EPOLL_CTL_ADD,listen_sock,&ev)<0)
   {  
     perror("epoll_ctl");
     exit(5);
   }
   while(1)
   {
     int timeout = -1;
     int reve_n = epoll_wait(epfd,env,sizeof(env)/sizeof(env[0]),timeout);
    // printf("reve_n :%d\n",reve_n);
     switch (reve_n)
    {
      case 0:
        printf("time out \n");
        break;
      case -1:
        perror("epoll_wait");
        exit(6);
      default:
   {   int idx=0;
       for(idx;idx<reve_n;idx++)
      {
       epoll_buf_p p=(epoll_buf_p)env[idx].data.ptr;
 //      printf("p->fd %d\n",p->fd);
       if(p->fd == listen_sock&&env[idx].events==EPOLLIN)
      { struct sockaddr_in cilent ;
        socklen_t len=sizeof(cilent);
        int sock=0; 
        if((sock=accept(listen_sock,(struct sockaddr*)&cilent,&len))>0) // while ET
        {
             ev.events=EPOLLIN;
             ev.data.ptr=alloc(sock);
             if(epoll_ctl(epfd, EPOLL_CTL_ADD,sock,&ev)<0)
             {
                 perror("epoll_ctl");
                 exit(7);
             }
             const char * cilent_ip=inet_ntoa(cilent.sin_addr); 
              int   cilent_port=ntohs(cilent.sin_port);
            printf("cilent connect ip:%s port:%u \n",cilent_ip,cilent_port);
       }
       if(sock<0) {
         perror("accept");
       } 
      continue;
      }
      else if(env[idx].events==EPOLLIN)
      {
         int res=read(p->fd,p->buf,SIZE);
         if(res<0){
           perror("read");
           exit(8);
          }
         else if(res==0)
         {
           printf("cilent quit!!\n");
           close(p->fd);
           free(p);
           epoll_ctl(epfd,EPOLL_CTL_MOD,p->fd,NULL); 
         }
         else {
       // if((p->buf)[res-2]=='\r') 
       // (p->buf)[res-2]=0;
      //  else {
       // (p->buf)[res-1]=0;
       // }
         (p->buf)[res]=0;
         printf("####cilent : %s",p->buf);
         fflush(stdout);
        }
        ev.events=(env[idx]).events|EPOLLOUT;
       if(epoll_ctl(epfd,EPOLL_CTL_MOD,p->fd,&ev)<0)
        {
          perror("epoll_ctl");
          exit(9);
        }
       } else{ // end read  
        const char * temp ="HTTP/1.1 200 OK\r\n Content-Length :%s \r\n\r\n wo xihuan yutian !!! ";
        int ret= sprintf(p->buf,"%s",temp);
         write(p->fd,p->buf,ret);
         epoll_ctl(epfd,EPOLL_CTL_DEL,p->fd,NULL);
         close(p->fd);
        // ev.events=EPOLLIN;
       //  if(epoll_ctl(epfd,EPOLL_CTL_MOD,p->fd,&ev)<0)
      //  {
      //    perror("epoll_ctl");
     //     exit(9);
      //  }
       }
     }
    }
     break;
   }// end switch
 } // end while(1)
     return 0;
}       
        
         
