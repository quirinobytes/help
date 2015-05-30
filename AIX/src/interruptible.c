#include <stdio.h>
#include <stdlib.h>


int main() {


        printf("Begin\n");

unsigned long int i=0;
int z=0;

        while(1){
                i++;
                if (i==99){
                        z++;
                        if ( z==5 ){
                                printf("Foi Dormir!\n\n\n");
                                sleep(5);
                                printf("Acordou!\n");
                                z=0;
                                sleep(1);
                        }
                        i=0;
                }
        }


return 0;
}

