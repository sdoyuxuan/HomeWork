#include <stdio.h>
   #include <unistd.h>
   #include <stdlib.h>
   int main()
   {
    while(1)
    {  pid_t id=fork();
      if(id<0) printf("falied\n");
      else if(id == 0)
     {
       int i=0;
       int j=0;
       int k=0;
       int len=0;
       char buf[1024];
        char *   _argv[32];
       printf("[yutian@localhost _bash_]$");
       fflush(stdout);
      len=read(0,buf,1024);
       buf[len-1]=0;
       len=len-1;
       if(buf=="exit") {exit(1);}
       while(buf[i]!='\0')
     {
          if(buf[i]==' ')
          { buf[i]='\0';};
          ++i;
       }
       while(j<len)
       {
          _argv[k]=buf+j;
          while(buf[j]!='\0')
          {
            j++;
          }
          j++;
          k++;
       }
       _argv[k]=NULL;
       execvp(_argv[0],_argv);
     }
     else
     {
        int status=0;
       if(waitpid(id,&status,0))
         {
              if(!WIFEXITED(status)) break;
         }
     }
  }
  return 0;
  }
 

