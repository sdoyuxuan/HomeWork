#ifndef COMM_H
#define COMM_H
#include <stdio.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <unistd.h>
#include <string.h>
#define PATHNAME "."
#define PROJ_ID  0x66
struct msgbuf
{
    long int  mtype;
    char mtext[1024];
};
int createmsg();
int Getmsg();
int msgsent(int msgid,struct msgbuf*ptr);
int msgrec(int msgid,struct msgbuf*ptr,long type);
int msgdestory(int msgid);
#endif 
