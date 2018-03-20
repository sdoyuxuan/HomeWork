#include "comm.h"
#include "secomm.h"
int main()
{
   int shmid=getshm();
   char *RB = SHM_at(shmid);
   int semid=getsem();
   ssize_t size=0;
   while(1)
   {
      op_p(semid,0);
     size=read(0,RB,1024);
     RB[size]=0;
      if(!strcmp(RB,"exit\n"))break;
      op_v(semid,0);
      sleep(1);
   }
   SHM_dt(RB);
   return 0;
}

     
