#include<stdio.h>  
#include<stdlib.h>  
#include<unistd.h>  
#include<sys/shm.h>  
#define MAX_SIZE 1024
#include<string.h>  
int main()  
{  
    int i;  
    void *shared_memory;  
    char buff[100];  
    int shmid;  
    shmid=shmget((key_t)2345, 1024, 0666|IPC_CREAT);   
    printf("Key of shared memory is %d\n",shmid);  
    shared_memory=shmat(shmid,NULL,0);   
    printf("Process attached at %p\n",shared_memory);    
    printf("Enter some data to write to shared memory\n");  
    if (fgets(buff, MAX_SIZE, stdin) == NULL) {
        perror("fgets");
        exit(EXIT_FAILURE);
    }
    strcpy(shared_memory,buff);
    printf("You wrote : %s\n",(char *)shared_memory);  
} 