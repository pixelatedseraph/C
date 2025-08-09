//you can use strings as arrays which can be used as pointers
#include<stdio.h>
int main(){
	char buff [] = "hello";
	//use it as array 
	printf("%c\n",buff[2]);//l
	printf("%c\n",*(buff+2));//l
	return 0;			       	
}
