#include "mysql_api.h"
const size_t SIZE=1024;
int main(int argc,char*arg[])
{
   MYSQL conn; 
   if(mysql_init(&conn)!= NULL) {
    if(mysql_real_connect(&conn,"127.0.0.1","yu","","test",3306,NULL,0)==NULL){
   cout<<mysql_error(&conn)<<endl;
   fflush(stdout);
   exit(2);
 }    
}
   cout<<"mysql have opened<br />"<<endl;
   char * method=getenv("METHOD");
   char * query;
   char buff[SIZE];
   int flag_get=0;
   char * para[2];
   if(strcasecmp(method,"GET")==0){
   query=getenv("QUERY_PARA");
    flag_get=1;
   }
   else{
   query=getenv("CONTENT_LENGTH");
  }
  //cout<<method<<endl;
 // cout<<query<<endl;
  if(flag_get){
   //get
   // cout<<1111<<endl;
   }
  else{
  memset(buff,0,SIZE);
  read(0,buff,atoi(query));
  query=buff;
 // cout<<buff<<endl;
  int idx=0,j=0;
  while(query[idx]!='\0'){
  while(query[idx++]!='=');
  para[j++]=query+idx;
  if(j==2)break;
  while(query[idx]!='&') ++idx;
  query[idx++]=0;
 }
 }
// cout<<query<<endl;
// cout<<method<<endl;
// cout<<para[1]<<endl;
 Insert(conn,para[0],para[1]);
 // cout<<method<<endl;
//  cout<<query<<endl; 
 //  cout<<"aaaa"<<endl;  
   mysql_close(&conn);
   return 0;
}
