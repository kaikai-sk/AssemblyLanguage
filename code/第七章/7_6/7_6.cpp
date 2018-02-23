#include <stdio.h>

int main()
{
	char a[6]="BaSiC";
	char b[6]="MinIX";
	int i=0;
	do
	{
        a[i]=a[i] & 0xDF;
		b[i]=b[i] | 0x20;
		i++;
	}while(i<5);
	printf("%s\n",a);
	printf("%s\n",b);
	return 0;
}