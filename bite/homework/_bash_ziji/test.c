#include <stdio.h>
#include <unistd.h>
int main()
{
  pid_t id=fork();
   if (id==0)
   {
      char * const _argv[]={"ls","-l",NULL};
      execvp("ls",_argv);
   }
   else
   {
     waitpid(id,NULL,0);
   }
}
