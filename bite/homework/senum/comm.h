#ifndef COMM_H
#define COMM_H
#include <stdio.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <string.h>
#define PATHNAME "."
#define PROJ_ID  0x66
  union semun {
               int              value;    /* Value for SETVAL */
               struct semid_ds *buf;    /* Buffer for IPC_STAT, IPC_SET */
               unsigned short  *array;  /* Array for GETALL, SETALL */
               struct seminfo  *_buf;  /* Buffer for IPC_INFO
                                           (Linux-specific) */
          };

int createsem(int nsums);
int getsem();
int Init(int semid,int nums,int val);
int destory(int semid);
int op_p(int semid,unsigned which);
int op_v(int semid,unsigned which);
#endif 
