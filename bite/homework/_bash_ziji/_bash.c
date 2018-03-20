#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
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
   // if(!(strcmp(buf,"Quit")))return 7;}
     exit(7);
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
     break; //fang zhi child yizhi zai  while zhong  langfei ziyuan ruguo shuru cuowu mingling 
   }
   else
   {
      int status=0;
      if(waitpid(id,&status,0))
       {
            if(7==WIFEXITED(status)) printf("child return code :%d\n",WIFEXITED(status));
       }
   }
}
return 0;
}

