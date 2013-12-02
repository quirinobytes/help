//#include <unistd.h>
//#include <sys/type.h>

int pid,pid2,i=0,c=0;



int main(){

        pid = fork();

        if (pid > 0 ){ // contexto da task filho
                printf("Iniciando task filho\n");
                while ( i <= 10 ){
                        printf("%d - Task 1 Filho ID=%d\n",i,pid);
                        i++;
                        for (c=0;c<500000000;c++);


                }
        }

        if (pid == 0 ) // contexto da task pai
                printf("Iniciando e encerrando a task pai ID=%d\n",pid);

return 0;
}

