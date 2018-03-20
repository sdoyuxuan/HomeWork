#include <stdio.h>
#include <unistd.h>
#include <string.h>
int main()
{
     int i=0;
     int j=0;
     int k=0;
     int len=0;
     char buf[1024];
      char * const  _argv[32];
     printf("[yutian@localhost _bash_]$");
     fflush(stdout);
    len=read(0,buf,1024);
     buf[len-1]=0;
     len=len-1;
     while(buf[i]!='\0')
     {
        if(buf[i]==' ')
        { buf[i]='\0';};
        ++i;
     }
     while(j<len)
     {
        memmove(_argv[k],buf+j,strlen(buf+j)+1);
        while(buf[j]!='\0')
        { 
          j++; 
        }
        j++;
        k++;
     }
     *_argv[k]=0;     
     execvp(_argv[0],_argv);
   
return 0;
}

