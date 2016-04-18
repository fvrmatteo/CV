#include <stdio.h>

int main(int argc, char **argv) {
	if(argc < 2) {
		printf("[-] Too few arguments\n");
		return 1;
	}
	printf("[+] Opening %s shared library\n", argv[1]);
	void *ptr = (void *)dlopen(argv[1], 1);
	printf("[+] Loading complete, closing library\n");
	close(ptr);
	return 0;
}