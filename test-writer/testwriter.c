#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_LEN 20
#define MAX_FILE_LEN 20

int getBit(long long src, int position)  {
	return (src >> position) & 1;
}

int main()  {
	int varcount = 0;

	printf("Enter number of variables: ");
	scanf("%d", &varcount);

	printf("\nEnter the variable names, one per line (max length %d):\n", MAX_LEN);

	char * * varArr = (char * *) malloc(varcount * sizeof(char *));

	int i = 0;
	for(i = 0; i < varcount; i++)  {
		varArr[i] = (char *) malloc(MAX_LEN * sizeof(char));
		scanf("%s", varArr[i]);
	}

	char fileName[MAX_FILE_LEN] = "";

	printf("\nEnter title of output file (include extension, max length %d): ", MAX_FILE_LEN);
	scanf("%s", fileName);

	FILE * outputFile = fopen(fileName, "w");

	long long lim = pow(2, varcount);
	long long iter;
	long long innerIter;

	printf("\nWriting...\n");

	for(iter = 0; iter < lim; iter++)  {
		printf("%lld/%lld\n", iter, lim);

		fprintf(outputFile, "set ");

		for(innerIter = 0; innerIter < varcount; innerIter++)  {
			fprintf(outputFile, "%s %d, ", varArr[innerIter], getBit(iter, varcount - innerIter - 1));
		}

		fprintf(outputFile, "eval, output;\n");
	}

	printf("\nDone.\n");
}