#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE 1024
int main()
{
	 char buf[MAX_LINE];  /*缓冲区*/
	 FILE *fp;            /*文件指针*/
	 int len;             /*行字符个数*/

	 if((fp = fopen("abc.txt","r")) == NULL)
	 {
		perror("fail to read");
		exit (1) ;
	 }
	 while(fgets(buf,MAX_LINE,fp) != NULL)
	 {
		 len = strlen(buf);
		 printf("%s\n",buf);

	 }
	  return 0;
}
