#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <math.h>
// defining a macro to calculate the length of matrix and this macro only works if the array is in local scope that is , the array should be a real array and not decayed to pointer
#define ARR_LEN(arr) (sizeof(arr) / sizeof((arr)[0]))
// func prototypes
void print_Array(int *, int);

// 1. lets write a function that takes a string and returns length of string
int mylen(char *str)
{
    str[strcspn(str, "\n")] = '\0';
    int len = 0;
    while (*(str) != 0)
    {
        len++;
        str++;
    }
    return len;
}

// prime number check
bool primecheck(int num)
{
    if (num < 2)
        return false;
    for (int i = 2; i <= sqrt(num); ++i)
    {
        if (num % i == 0)
        {
            return false;
        }
    }
    return true;
}

// 2. function to modify array , if the element is prime then double it and if not ,do nothing to it
void modify_Array(int *arr, int len)
{
    for (int i = 0; i < len; ++i)
    {
        if (primecheck(arr[i]))
        {
            arr[i] = arr[i] * 2;
        }
    }
    print_Array(arr, len);
}

// now lets write a function to print arrays
void print_Array(int *arr, int len)
{
    for (int i = 0; i < len; ++i)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main()
{
    char buff[1024];
    printf("enter your string : \n");
    fgets(buff, sizeof(buff), stdin);
    printf("the length is %d \n", mylen(buff));

    // define an array
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    modify_Array(arr, ARR_LEN(arr));
    return 0;
}
