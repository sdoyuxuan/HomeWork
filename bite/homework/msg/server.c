#include "comm.h"
int main()
{
   ssize_t sz;
   struct msgbuf buf;
   buf.mtype=1;
   int msgid;
   msgid=createmsg();
   char _buf[1024];
   memset(buf.mtext,0,1024);
   while(1)
   {
    _buf[0]=0;
    printf("please enter");
    fflush(stdout);
    if((sz=read(0,_buf,1024))<0)
    {
       perror("read");
       return 6;
    }
     _buf[sz]=0;
     memmove(buf.mtext,_buf,sz+1);
    if(!(strcmp(_buf,"exit\n")))break;
    buf.mtype=1;
    msgsent(msgid,&buf);
   sleep(1);
   sz=msgrec(msgid,&buf,2);
    strcpy(_buf,buf.mtext);
    printf("%s",_buf);
    fflush(stdout);
    }
    msgdestory(msgid);
    return 0;
}

