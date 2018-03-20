#include "comm.h"
#include "secomm.h"
int main()
{
   int shmid=getshm();
   char *RB = SHM_at(shmid);
   int semid=getsem();
   while(1)
   {
      op_p(semid,0);
      read(0,RB,1024);
      if(!strcmp(RB,"exit\n"))break;
      op_v(semid,0);
   }
   SHM_dt(RB);
   return 0;
}

     
