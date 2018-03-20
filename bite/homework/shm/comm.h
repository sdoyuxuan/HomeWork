#ifndef SHM_C
#define SHM_C
#include<stdio.h>
#include<stdlib.h>
#include<sys/ipc.h>
#include<sys/shm.h>
#include<sys/types.h>
#include<sys/sem.h>
#include<string.h>
#define PATHNAME "."
#define PROJ_ID 0x66
#define SIZE 4096*1
int creat(size_t size);
int getshm();
int destory(int shmid);
void* SHM_at(int shmid);
int SHM_dt(void * addr);
#endif
