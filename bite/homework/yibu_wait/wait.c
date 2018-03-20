#include<stdio.h>
#include<unistd.h>
#include<signal.h>
#include<stdlib.h>
int pid=0;
void handle (int x)
{
   if(waitpid(pid,NULL,0)>0) printf("wait success\n");
   else perror("waitpid");
}
int main()
{
  pid_t id=fork();
  if(id==0)
   {
      printf("i am child\n");
      exit(2);
   }
   else{
   pid=id;
   if(signal(SIGCHLD,handle)<0)
     perror("signal");
    size_t idx=0;
    for( idx=0;idx<2;idx++)
    {
       printf("father do something\n");
       sleep(1);
    }
    return 0;
    }
} 
