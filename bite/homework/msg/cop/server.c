#include "comm.h"
static int  create()
{
   int fd=0;
   key_t _key;
   _key=ftok(PATHNAME,PROJ_ID);
   if(fd=msgget(_key,IPC_CREAT|IPC_EXCL|0666)<0)
   {
     perror("msgget");
     return 1;
   }
   return fd;
  }
int Getmsg(int msgflg)
{
   int fd=0;
   key_t _key;
   _key=ftok(PATHNAME,PROJ_ID);
  if(fd=msgget(_key,msgflg)<0)
  {
   perror("msgget");
   return 2;
  }
  return fd;
}
int msgsent(int msgid,struct msgbuf*ptr)
{
    int flag;
   if(flag=msgsnd(msgid,(void*)ptr,1024,0)<0)
    {
      perror("msgsnd");
      return 3;
    }
    return 0;
}
int msgrec(int msgid,struct msgbuf*ptr,long int type)
{
    int sz;
    if(sz=msgrcv(msgid,(void*)ptr,1024,type,0)<0)
    {
      perror("msgrcv");
      return 4;
    }
    return sz;
}
int msgdestory(int msgid)
{
   int flag;
   if(flag=msgctl(msgid,IPC_RMID,NULL)<0)
   {
      perror("msgctl");
      return 5;
   }
   return 0;
}
int main()
{
   ssize_t sz;
   struct msgbuf buf;
   buf.mtype=1;
   int fd;
   fd=create();
   while(1)
   {
    if(sz=read(0,buf.mtext,1024)<0)
     {
       perror("read");
       return 6;
     }
    buf.mtext[sz]=0;
    if(buf.mtext=="exit\n")break;
    msgsent(fd,&buf);
   sleep(1);
   sz=msgrec(fd,&buf,2);
   buf.mtext[sz]=0;
    write(1,buf.mtext,sz);
    }
    msgdestory(fd);
    return 0;
}

