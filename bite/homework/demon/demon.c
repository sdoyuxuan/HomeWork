#include<stdio.h>
#include<unistd.h>
#include<signal.h>
#include<stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
void create_demon()
{
   umask(0);
   pid_t id;
   if((id=fork())>0) exit(0);
   else 
   {
      struct sigaction act;
      act.sa_flags=0;
      sigemptyset(&act.sa_mask);
      act.sa_handler=SIG_IGN;
      sigaction(SIGCHLD,&act,NULL); 
      setsid();
      if((id=fork())>0) exit(0);
      else
      {
         close(0);
         open("/dev/null",O_RDWR);
         close(1);
         dup(0);
         close(2);
         dup(0);
         chdir("/");
      }
    }
}
int main()
{
   create_demon();
   while(1)
  {
    sleep(1);
  }
  return 0;
}         
