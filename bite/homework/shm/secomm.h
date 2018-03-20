#ifndef COMM_H
#define COMM_H
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
int Semdestory(int semid);
int op_p(int semid,unsigned which);
int op_v(int semid,unsigned which);
#endif 
