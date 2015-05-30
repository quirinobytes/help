#include <stdio.h>
#include <malloc.h>
#define MAXPTR 1024
#define MEG 1024*1024


int main(int argc, char *argv[])
{
	char *buf[MAXPTR];
	char *buf1;
	char c;
	unsigned long memmax;
	unsigned long step;
	unsigned long i,j,k;
	if(argc != 3) {
		printf("USAGE: %s <Max Memory(meg)> <stepi(meg)>\n", argv[0]);
		exit(-1);
	}
	for(i=0;i!=MAXPTR;i++)
		buf[i]=NULL;
	i=j=k=0;
	memmax=(atoi(argv[1])*MEG);
	step =(atoi(argv[2])*MEG);
	printf("Running Memhog with maxmem = %u Step = %u\n",memmax, step);
	sleep(5);
	for(i=step;i < memmax; i+=step,k++) {
		if((buf[k]=(char*)malloc(step)) == NULL) {
			perror("ERROR in malloc");
			exit(-1);
		}
		buf1=buf[k];
		printf("Mallocing and Writing %u bytes\n", i);
		for(j=0;j<step;j+=30) {
			strcpy(buf1+j, "The Camp Town Ladies......");
			printf(".");
		}
		printf("\nMalloced and Wrote %u bytes\n", i);
		c=getchar();
	}
	for(i=0;buf[i]!=NULL;i++){
		free((char*)buf[i]);
	}
	exit(0);
}
