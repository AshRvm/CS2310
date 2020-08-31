#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define MAX_LEN 20
#define MAX_FILE_LEN 20

int getBit(long long src, int position)  {
	return (src >> position) & 1;
}

int parseInt(char * name, int start, int end)  {
	int i;
	int num = 0, numlength = 0;

	for(i = start; i <= end; i++)  {
		int digit = name[i] - '0';
		num += pow(10, numlength++) * digit;
	}

	return num;
}

int busLength(char * name)  {
	int length = strlen(name);
	if(name[length - 1] != ']')  {
		return 0;
	}

	int i = length - 2;
	while(name[i] != '[')  {
		i--;
	}

	return parseInt(name, i + 1, length - 2);
}

void printBusVarName(FILE * f, char * name)  {
	int i = 0;
	while(name[i] != '[')  {
		fputc(name[i++], f);
	}
}

int main()  {
	int mode;

	int varcount = 0;
	int busoverhead = 0;

	printf("Enter number of variables: ");
	scanf("%d", &varcount);

	printf("\nEnter the variable names, one per line, for buses, enter busname[buslength] (max length %d):\n", MAX_LEN);

	char * * varArr = (char * *) malloc(varcount * sizeof(char *));

	int i = 0;
	for(i = 0; i < varcount; i++)  {
		varArr[i] = (char *) malloc(MAX_LEN * sizeof(char));
		scanf("%s", varArr[i]);

		int bl = busLength(varArr[i]);
		if(bl != 0)  {
			busoverhead += bl - 1;
		}
	}

	char fileName[MAX_FILE_LEN] = "";

	printf("\nEnter title of output file (include extension, max length %d): ", MAX_FILE_LEN);
	scanf("%s", fileName);

	FILE * outputFile = fopen(fileName, "w");

	long long lim = pow(2, varcount + busoverhead);
	long long iter;
	long long bitPosIter;
	long long innerVarIter;

	printf("\nWriting... ");

	printf("varcount: %d, busoverhead: %d\n\n", varcount, busoverhead);

	for(iter = 0; iter < lim; iter++)  {
		printf("%lld/%lld\n", iter, lim);

		bitPosIter = 0;
		for(innerVarIter = 0; innerVarIter < varcount; innerVarIter++, bitPosIter++)  {
			int bl = busLength(varArr[innerVarIter]);
			if(bl == 0)  {
				fprintf(outputFile, "set %s %d, ", varArr[innerVarIter], getBit(iter, varcount + busoverhead - (bitPosIter) - 1));
			}  else  {
				int busIter;

				fprintf(outputFile, "set ");
				printBusVarName(outputFile, varArr[innerVarIter]);
				fprintf(outputFile, " %%B");

				for(busIter = 0; busIter < bl; busIter++)  {
					fprintf(outputFile, "%d", getBit(iter, varcount + busoverhead - bitPosIter - busIter - 1));
				}
				fprintf(outputFile, ", ");

				bitPosIter += bl - 1;
			}
		}

		fprintf(outputFile, "eval, output;\n");
	}

	printf("Done.\n");
}