#include "comm.h"
#include "secomm.h"
int main()
{
   int shmid=creat(SIZE);
   char *RB = SHM_at(shmid);
   int semid=createsem(1);
   memset(RB,0,SIZE);
   while(1)
   {
      op_p(semid,0);
      if(strlen(RB)>0)
     { if(!strcmp(RB,"exit\n"))break;
       else printf("%s",RB);
     }
      op_v(semid,0);
   }
   SHM_dt(RB);
   destory(shmid);
   Semdestory(semid);
   return 0;
}

     