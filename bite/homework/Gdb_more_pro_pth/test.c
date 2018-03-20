#include <stdio.h>
#include <unistd.h>
#include <pthread.h>


void* Run(void*k)
{
   int i=2;
   printf("hello i am 3 lwp my data:%d,lwp:%u\n",i,pthread_self());
   return (void*) "hello i am lwp 3 return vale";
}
int main()
{
  pthread_t lwp; 
  pid_t id=fork();
  pthread_create(&lwp,NULL,Run,NULL);
   if(id==0)
   {
      int i=1;
      printf("hello i am 2 lwp my data:%d,lwp:%d\n",i,getpid());
      return 0;
   }
   else
   {
      void * ret_pth=NULL;
      int i=0;
      int ret=0;
      printf("hello i am 1 lwp my data:%d,lwp:%d\n",i,getpid());
     if((ret=waitpid(id,NULL,0))>0)
      { printf("hello  success wait  id:%d\n",ret);}
     if(pthread_join(lwp,&ret_pth)==0)
      {
         printf("haha wait success pthread,his return val:%s\n",(char*)ret_pth);
      }
    }
      return 0;
}     
      
   
