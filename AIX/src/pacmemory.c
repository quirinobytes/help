#include <stdlib.h>
#include <stdio.h>

#define MEG (1024*1024)

int main(int argc, const char* argv[]) {
	int chunksize = 128*1024; /* 128 kB chunks */
	unsigned long sum = 0; /* allocated memory */

	printf("Allocating memory in chunks a %dkB", chunksize/1024);
	for(;;) {
		char* p;
		int i;

		sum += chunksize;
		if (sum % MEG == 0) {
			fprintf(stdout, "%9lu MB ", sum/MEG);
			fflush(stdout);
		}
		p = malloc(chunksize);
		if(!p) {
			perror("malloc");
			return 1;
		}
		/* touch the allocated memory space */
		for (i=0; i<chunksize; i+= 1024) p[i] = ' ';
	};
	fprintf(stdout, "Done.");
	return 0;
}


