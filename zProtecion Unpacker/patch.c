#include <stdio.h>
#include <unistd.h>

unsigned long rotl(unsigned long value, int shift) {
    if ((shift &= sizeof(value)*8 - 1) == 0) {
    	return value;
    }
    return (value << shift) | (value >> (sizeof(value)*8 - shift));
}

void decrypt1(FILE *hRead, FILE *hWrite, unsigned long offset, unsigned long size, unsigned long key) {
	size = size >> 2; //each block is a DWORD
	int i;
	unsigned char b0, b1, b2, b3;
	long int dword = 0;
	for(i = 0; i < size; i++) {
		fseek(hRead, offset, SEEK_SET);
		fseek(hWrite, offset, SEEK_SET);
		fread(&b3, sizeof(b3), 1, hRead);
		fread(&b2, sizeof(b2), 1, hRead);
		fread(&b1, sizeof(b1), 1, hRead);
		fread(&b0, sizeof(b0), 1, hRead);
		dword = (((long int) b0) << 24) | (((long int) b1) << 16) | (((long int) b2) << 8) | b3;
		//printf("dword: 0x%08x\n", dword);
		dword ^= key;
		//printf("ORed dword: 0x%08x\n", dword);
		key = rotl(key, 1);
		//printf("rotated key: 0x%08x\n\n", key);
		key++;
		fwrite(&dword, 1, sizeof(long int), hWrite);
		offset += 4;
	}
}

void decrypt2(FILE *hRead, FILE *hWrite, unsigned long offset, unsigned long key) {
	fseek(hRead, offset, SEEK_SET);
	fseek(hWrite, offset, SEEK_SET);
	unsigned char b0;
	fread(&b0, sizeof(b0), 1, hRead);
	//printf("BYTE: 0x%1x\n", b0);
	b0 ^= key;
	b0 &= 0xFF;
	fwrite(&b0, 1, sizeof(b0), hWrite);
	//printf("0x%1x\n\n", b0);
	int i = 0;
	do {
		offset++;
		fseek(hRead, offset, SEEK_SET);
		fseek(hWrite, offset, SEEK_SET);
		key = rotl(key, 1);
		key++;
		fread(&b0, sizeof(b0), 1, hRead);
		//printf("BYTE: 0x%1x\n", b0);
		b0 ^= key;
		b0 &= 0xFF;
		fwrite(&b0, 1, sizeof(b0), hWrite);
		//printf("%d 0x%1x\n", i, b0);
		i++;
	} while(b0 != 0);
}

int main(int argc, char **argv) {
	if(argc < 6) {
		printf("This program needs 5 args: offset, size, key, in_filename, out_filename\n");
		return -1;
	}
	char *ptr;
	unsigned long offset = strtoul(argv[1], &ptr, 16);
	unsigned long size = strtoul(argv[2], &ptr, 16);
	unsigned long key = strtoul(argv[3], &ptr, 16);
	//printf("[+] Offset: 0x%08x Size: 0x%08x Key: 0x%08x Name: %s\n", offset, size, key, argv[4]);
	FILE *hRead = fopen(argv[4], "r+");
	/*do {
	} while((hRead = fopen(argv[4], "r+")) == NULL);*/
	FILE *hWrite = fopen(argv[5], "r+");
	/*do {
	} while((hWrite = fopen(argv[5], "r+")) == NULL);*/
	if(size == 0) {
		decrypt2(hRead, hWrite, offset, key);
	} else {
		decrypt1(hRead, hWrite, offset, size, key);
	}
	fclose(hRead);
	fclose(hWrite);
	//system("PAUSE > NUL");
	return 0;
}
