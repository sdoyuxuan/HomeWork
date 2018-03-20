#include "comm.h"
static int commcreate(int msgflg)
{
   umask(0);
   int fd=0;
   key_t _key;
   _key=ftok(PATHNAME,PROJ_ID);
   if((fd=msgget(_key,msgflg))<0)
   {
     perror("msgget");
     return -1;
   }
   return fd;
  }
int  createmsg ()
{
   return commcreate(IPC_CREAT|IPC_EXCL|0666);
}
int Getmsg()
{
   return commcreate(IPC_CREAT);
}
int msgsent(int msgid,struct msgbuf*ptr)
{
    int flag;
   if((flag=msgsnd(msgid,(void*)ptr,1024,0))<0)
    {
      perror("msgsnd");
      return -3;
    }
    return 0;
}
int msgrec(int msgid,struct msgbuf*ptr,long int type)
{
    int sz;
    if((sz=msgrcv(msgid,(void*)ptr,1024,type,0))<0)
    {
      perror("msgrcv");
      return -4;
    }
    return sz;
}
int msgdestory(int msgid)
{
   int flag;
   if((flag=msgctl(msgid,IPC_RMID,NULL))<0)
   {
      perror("msgctl");
      return -5;
   }
   return 0;
}


 
   
   
     
     
       
     
    
    
   
  
 
   
   
    
   



