#include <stdio.h>
#include <string.h>

// lets make a function that reverses the arguments passsed

void reverse(char *str)
{
    int len = strlen(str);
    int start = 0;
    int end = len - 1;
    while (start <= end)
    {
        char temp = str[start];
        str[start] = str[end];
        str[end] = temp;
        start++;
        end--;
    }
}

int main(int argc, char *argv[])
{
    printf("you typed these many arguments : %d \n", argc - 1); // because ./out is counted as a command too
    for (int i = 1; i < argc; ++i)
    {
        reverse(argv[i]);
        printf("argument %d is : %s \n", i, argv[i]);
    }
    return 0;
}
