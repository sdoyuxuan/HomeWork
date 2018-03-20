#include "secomm.h"
#include "comm.h"
static int comcreate(int nsums,int semflg)
{
    umask(0);
    key_t key=ftok(PATHNAME,PROJ_ID);
   int semid;
   if((semid=semget(key,nsums,semflg))<0)
   {
      perror("semget");
      return -1;
   }
   return semid;
}
int createsem(int nsums)
{
    int semid=comcreate(nsums,IPC_CREAT|IPC_EXCL|0666);
    return semid;
}
int getsem()
{
    int semid=comcreate(0,IPC_CREAT);
    return semid;
}
int Init(int semid,int nums,int val)
{
   union semun _um;
   memset(&_um,0,sizeof(_um));    
    _um.value=val;
    if(semctl(semid,nums,SETVAL,_um)<0)
     {
       perror("semctl");
       return -3;
     }
    return 0;
}
int destory(int semid)
{  
    int ret=0;
   ret=semctl(semid,0,IPC_RMID);
    if(ret<0) 
    {
       perror("semctl");
       return -2;
    }
    return 0;
}
int op(int semid,unsigned which,int op)
{
    struct sembuf buf;
    memset(&buf,0,sizeof(buf));
    buf.sem_num =which;
    buf.sem_op=op;
    buf.sem_flg=SEM_UNDO;
    if(semop(semid,&buf,1)<0) perror("semop");
    return 0;
}  
int op_p(int semid,unsigned which)
{
    op(semid,which,-1);
    return 0;
}
int op_v(int semid,unsigned which)
{
    op(semid,which,1);
    return 0;
}
