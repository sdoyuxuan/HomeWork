#include"comm.h"
static int creatcomm(size_t size,int shmflg)
{
  umask(0);
  int key=ftok(PATHNAME,PROJ_ID); 
  int shmid;
  if((shmid=shmget(key,size,shmflg))<0)
  {
    perror("shmget");
    return -1;
  }
  return shmid;
}
int creat(size_t size)
{
  int shmid;
  if((shmid=creatcomm(size,IPC_CREAT|IPC_EXCL|0666))<0)
  {
    perror("shmget");
    return -2;
  }
  return shmid;
}
int getshm()
{
  int shmid;
  if((shmid=creatcomm(0,IPC_CREAT))<0)
  {
    perror("shmget");
    return -3;
  }
  return shmid;
}
int Semdestory(int shmid)
{
    int flag=0;
    if((flag=shmctl(shmid,IPC_RMID,NULL))<0)
     {
       perror("shmctl");
       return -4;
     }
     return 0;
}
void * SHM_at(int shmid)
{
   void* flag=NULL;
   if((flag=shmat(shmid,0,0))<0)
   {
      perror("shmat");
      return (void*)-5;
   }
   return flag;
}
int SHM_dt(void * addr)
{
    int flag=0;
    if((flag=shmdt(addr))<0)
    {
       perror("shmdt"); 
       return -6;
    }
    return 0;
}

