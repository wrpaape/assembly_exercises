#include <stdio.h>

int
main(int argc,
     char *argv[])
{
	for (int i = 0; i < argc; ++i)
		printf("test %d\n", i);

	return 0;
}
