#include <stdio.h>
#include <string.h>
#include <stdlib.h>
// some juicy function prototypes
void forkPerson();

typedef struct
{
    char *firstname;
    char *lastname;
    char *title;
} Person;

// more  func prototypes
void initalize(Person *, const char *, const char *, const char *);
void printstruct(Person);
void freeheap(Person *);
// create a person
void forkPerson()
{
    Person p;
    initalize(&p, "ace", "eca", "c shenanigans");
    printstruct(p);
    freeheap(&p);
}

// initalize into person

void initalize(Person *p, const char *fname, const char *lname, const char *t)
{
    // init onto heap
    p->firstname = malloc(strlen(fname) + 1); // pointer to that heap alloc
    strcpy(p->firstname, fname);              // copies the string over to  heap allocated part of struct
    // now do it for lname
    p->lastname = malloc(strlen(lname) + 1);
    strcpy(p->lastname, lname); // copies it over to heap alloctaed part
    // lets fetch the title
    p->title = malloc(strlen(t) + 1);
    strcpy(p->title, t);
}
// print the data
void printstruct(Person p)
{
    printf("The first name is %s and the second name is %s and the title is %s \n", p.firstname, p.lastname, p.title);
}
// now lets free
void freeheap(Person *p)
{
    free(p->firstname);
    free(p->lastname);
    free(p->title);
}
int main()
{
    forkPerson();
    return 0;
}