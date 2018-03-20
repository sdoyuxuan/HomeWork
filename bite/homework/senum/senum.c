#include "comm.h"
int main()
{
   int semid=createsem(1); 
   Init(semid,0,1);
   pid_t id=fork();
   if(id==0)
   {
     while(1)
    {
     int semid=getsem();
     char buf[10];
     op_p(semid,0); 
     printf("%s","A");
     printf("%s","A");
     fflush(stdout);
     op_v(semid,0);
     sleep(1);
    }
     return 0;
   }
   else 
   { 
     while(1)
     { op_p(semid,0);
      printf("%s","B");
      printf("%s","B");
      fflush(stdout);
      op_v(semid,0);
      sleep(1);
     }
     waitpid(id,NULL,0);
   }
   destory(semid);
   return 0;
}
   
