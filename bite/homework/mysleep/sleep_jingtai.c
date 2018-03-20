#include<stdio.h>
#include<unistd.h>
#include<signal.h>
void handle (int x)
{
} 
unsigned int  mysleep(size_t x)
{
  int ret=0; 
  struct sigaction act,oct;
   sigset_t newmask,oldmask,suspendmask;
   sigemptyset(&newmask);
   sigaddset(&newmask,14);
   sigprocmask(SIG_BLOCK,&newmask,&oldmask);// lao block cun zai oldmask
   act.sa_handler=handle;
   act.sa_flags=0;
   sigemptyset(&act.sa_mask);
   oldmask=suspendmask;
   sigdelset(&suspendmask,14);
   sigaction(14,&act,&oct);
   alarm(x);
   sigsuspend(&oldmask);
   ret=alarm(0); // chuan 0  , diyici shezhi wei kong ,dierci wei shen yu shijian
   sigaction(14,&oct,NULL);// hui fu  
   sigprocmask(SIG_SETMASK,&oldmask,NULL);
   return ret; // 
}
int main()
{
   printf("start sleep..\n");
   if(mysleep(3)==0)
   printf("mysleep success\n");
   else 
   printf("mysleep falied\n");
   return 0;
}

