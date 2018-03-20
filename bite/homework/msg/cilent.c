#include "comm.h"
int main()
{
  int sz;
  struct msgbuf buf;
  int msgid=Getmsg();
  buf.mtype=2;
  char _buf[1024];
  while(1)
  {
   if((sz=msgrec(msgid,&buf,1))<0) break;
    strcpy(_buf,buf.mtext);
    printf("%s",_buf);
    fflush(stdout);
    printf("please enter    ");
    fflush(stdout);
   if((sz=read(0,_buf,1024))<0)
    {
       perror("read");
       return 7;
    }
   _buf[sz]=0;
   strcpy(buf.mtext,_buf);
   buf.mtype=2;
   msgsent(msgid,&buf);
   sleep(1);
  }
  return 0;
}

    
