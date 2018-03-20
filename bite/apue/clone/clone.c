#include <sys/types.h>
#include <sys/wait.h>
#include<stdio.h>
#include <sched.h>
#include <sys/mman.h>
#define STACK_SIZE 1024*1024*8
#define  _GNU_SOURCE
int test(void * arg)
{
     printf("eeee iam 2 thread \n");
     return 0;
}

int main()
{
    
    void *pstack = (void *)mmap(NULL,
                                STACK_SIZE,
                                PROT_READ | PROT_WRITE ,
                                MAP_PRIVATE | MAP_ANONYMOUS | MAP_ANON ,//| MAP_GROWSDOWN ,
                                -1,
                                0); 
    pid_t id=0;
    if((id=clone(test,(void*)((unsigned int)pstack+STACK_SIZE),CLONE_VM,NULL))==-1)
    {
        perror("clone");
    }
   sleep(1);
   waitpid(id,NULL,0);
   munmap(pstack,STACK_SIZE);
   printf(" eee iam father\n");
   return 0;
} 
