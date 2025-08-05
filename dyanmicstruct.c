#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct
{
    char name[50];
    int age;
} Person;

Person *initalizeHeap()
{
    Person *p = malloc(sizeof(Person));
    strcpy(p->name, "ace");
    p->age = 18;
    return p;
}

int main()
{
    Person *p = initalizeHeap();
    printf("the user is %s and age %d\n", p->name, p->age);
    return 0;
}
