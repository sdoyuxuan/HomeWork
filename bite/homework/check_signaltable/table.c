#include <stdio.h>
#include <signal.h>
void handler(int signum)
{
  printf("ctrl-c ----> SIGINT\n");
}
void printsigset(sigset_t * set)
{
    size_t idx=0;
    for(idx=0;idx<32;idx++)
    {
       if(0==sigismember(set,idx))
        putchar('0');
       else
        putchar('1');
    }
    putchar('\n');
}
int main()
{
  struct sigaction act,oact;
  sigset_t mask,oldmask,pending;
  act.sa_handler=handler;
  act.sa_flags=0;
  sigemptyset(&act.sa_mask);
  sigemptyset(&mask);
  sigemptyset(&oldmask);
  sigemptyset(&pending);
  sigaddset(&mask,SIGINT);
  sigprocmask(SIG_BLOCK,&mask,&oldmask);
  sigaction(SIGINT,&act,&oact);
  int second=0;
   while(second++<5)
   {  
     sigpending(&pending);
     printf("pending table:\n");
     printsigset(&pending);
     sleep(1); 
     printf("block table:\n");
     printsigset(&mask);
   }
   sigsuspend(&oldmask);
   printf("ok.. Now recovered block table\n");
   sigprocmask(SIG_SETMASK,&oldmask,NULL);
   sigpending(&pending);
   printf("Now pending table\n");
   printsigset(&pending);
   sigaction(SIGINT,&oact,NULL);
   return 0;
}
