// we will see all possible basic coverage in this code base , learn every edge case,every nook and cranny, no stone will be left unturned
/* 1.pointer basics,declaration and stuff
   2.pointer casting saga
   3.pointer arithematic
   4.double and triple pointers
   5.adv pointers to arrays
   6.adv pointers to strings and command line arguments
   7.heap malarkey
   8.function pointers and voodo
   9.complex pointer declarlations
   10.void pointers and generics
   11.pointer to structs
   12.pitfalls
   13.pointer aliasing and restrict keyword
   14.pointer invaildation
   15.interfacing with asm /registers via pointers

 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// 1 . pointer basics and stuff
void pbasics()
{
    int x = 10;
    void *pi = &x;
    int *p = &x;
    // void **dp = &p; //error because of ipt &p is int ** and rhs is void **
    int **dp = &p;
    // char *pc = &x;//note &x is int* and you are storing it in char*, so ipt(incomptible pointer type)
    printf("The addresses are %p (casted from void)\n, %p (actual pointer to int)\n, %p(no casting done)\n", (int *)pi, p, pi);
    // now lets use a char* and make it store int data and print it
    // printf("The address held by pointer to char to same address : %p \n", pc);  this leads to compliation error beacause of ipt
    // well how about something more juicy , make a void * and cast it char*
    printf("the address is : %p (casted to char from void )\n", (char *)pi);
    // interseting how about casting the same from int
    printf("the address is : %p (casted to char from int)\n", (char *)p);
    // now lets try all data types
    printf("the address is : %p (casted to double from int)\n", (double *)p);
    printf("the address is : %p (casted to void from int)\n", (void *)p);
    // now lets use double pointer
    printf("the address of pointer itself : %p \n", dp);
    // the conclusion i can draw? casting a pointer to different data types will tell the complier
    // on how to interpret the bytes at that address and it wont the address itself so that explains
    // as to why i didnt different addresses when i casted to different types
    // alright now lets do something else
    int a = 12;
    void *pv = &a;
    int *pi1 = (int *)pv;
    char *pc1 = (char *)pv;
    float *pf = (float *)pv;
    printf("the value is %d \n", *pi1); // fine
    printf("the value is %c \n", *pc1); // not  ub but some garbage
    printf("the value is %f \n", *pf);  // ub and strict aliasing rule is defied
}
// 2 pointer casting , type punning , legal alaising , char aliasing , struct and union aliasing
void pcast()
{
    // lets work on pointer casting malarkey
    int z = 190;
    void *du = &z; // int * -> void *
    // int *du1 = du;        // void * -> int* (implicit) dangerous asf!
    int *du1 = (int *)du; // okay and no problem beacause the original ptr had int data
    // now lets do the reverse
    int y = 200;
    int *dy = &y;
    void *dy1 = dy; // int * -> void * , 100% safe

    // lets do type punning and legal aliasing rules and char aliasing
    // a.1 strict alising is a  compiler optimization technique where it assumes that there would be
    // no two pointers of different type pointing to same memory address
    // lets see this in detail with code

    int a = 10; // compiler implictly assumes a pointer(int *) will be used to modify or access this int variable
    // float *pf = (float *)&a;           // casting a int* -> float*
    // printf("The value is %f \n", *pf); // dangerous ,ub because you are accessing the data from a pointer which isnt int so
    //  we broke strict aliasing rules

    // a.2 a more naunced example would be
    int b = 19;
    int *pi = &b; // fine beacuse  implict pointer expects int* anyways!
                  // float *pf1 = &b; // dangerous,ub because you broke strict aliasing rule
    *pi = 20;     // nice no problem
                  // *pf1 = 1124.5;   // dangerous asf , ub beacuse the implicit pointer is expecing from a int * not from float*

    // void* isnt an exception to strict aliasing rules
    // lets look at an example below
    int c = 13;
    void *pc = &c;
    int *pc1 = (int *)pc; // no problem because the original datatype was indeed int
    // float *pf2 = (float *)pc; // dangerous , ub because you are casting * into float when the compiler expects only a pointer to int is allowed to do so, so strict aliasing violation

    // now you may ask where am i getting to?
    // nice question,there seems a special pointer which is exempt to strict aliasing rules
    // that is char * , which can bypass strict aliasing rules
    // in c , char * , unsigned char * can legally alias any object type

    // 2.b now lets do a simple example
    int r = 10;
    char *pr = (char *)&r; // 100% safe
    // now lets check inspect byte
    for (int i = 0; i < sizeof(int); ++i)
    {
        printf("the address at byte %d is %x\n", i, (unsigned char)pr[i]); // prints memory addresses
        // printf("the values at byte %d is %d\n", i, )
    }
    // refer type punning via memcpy (better than pointer casting) and struct aliasing
}
// 3 pointer arithematic and 4 double and triple
void parithmetic()
{

    int vec1[] = {1, 2, 3, 4, 5, 6, 7, 8};
    int *ptr = vec1; // pointer to first element due to pointer decay
    int l1 = sizeof(vec1) / sizeof(int);
    for (int i = 0; i < l1; ++i)
    {
        printf("%d ", *(ptr + i)); // 1 2 3 4 ... 8
    }
    printf("\n");
    int **pp = &ptr;
    int vec2[l1]; // create an array
    for (int i = 0; i < l1; ++i)
    {
        vec2[i] = vec1[i] * 10;
    }
    // use the double ptr to make the ptr point to vec2
    *pp = vec2; // now ptr points to vec2;
    // print via ptr arithematic
    for (int i = 0; i < l1; ++i)
    {
        printf("%d ", *(ptr + i)); // 10 20 30 40 ... 80
    }
    printf("\n");
    // lets do some complex pointer notations
    *pp = vec1; // change the pointer back to vec1
    int *p = ptr;
    printf("%d\n", *p++); // post increment so ,derefs the current value, 1
    printf("%d\n", *p);   // 2
    p = ptr;              // reset the pointer back to vec[0]
    printf("%d\n", *++p); // pre increment so , derefs the next value ,2
                          // now lets get more spicy cus why not
    p = ptr;
    printf("%d\n", (*p)++); // deref the pointer and then post increment , 1
    printf("%d\n", *p);     // vec[0] becomes 2 now
    p = ptr;
    printf("%d\n", ++(*p)); // deref the pointer and then pre increment , 3
}
// 5. pointer to arrays
void ptoarrs()
{
    // lets cook pointer to array , consider the array below
    int vec1[] = {10, 20, 30, 40, 50};
    int (*ptovec1)[5] = &vec1; // pointer to vec1,&vec1 gives addresss of whole array
    // use pointer arithematic or indexing to access the elements
    for (int i = 0; i < 5; ++i)
    {
        printf("%d ", *(*(ptovec1) + i));
    }
    printf("\n");
    // now lets get beyond 1d array shall we?
    int vec2[][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}};
    // make a pointer to vec2
    int (*ptovec2)[3] = vec2;
    // lets access vec2 via indexing and pointer arithematic say 5
    printf("%d\n", vec2[1][1]);            // via index
    printf("%d\n", *(*(ptovec2 + 1) + 1)); // via pointer ari
    // lets access the elements before updation
    printf("The elements in vec2 before modification \n");
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            printf("%d ", *(*(ptovec2 + i) + j));
        }
        printf("\n");
    }
    // now lets access every element via ptr ari and half its value if its even and double if the element is odd
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            int num = *(*(ptovec2 + i) + j);
            if (num % 2 == 0)
            {
                *(*(ptovec2 + i) + j) = (*(*(ptovec2 + i) + j)) / 2;
            }
            else
            {
                *(*(ptovec2 + i) + j) = (*(*(ptovec2 + i) + j)) * 2;
            }
        }
    }
    // now time to print the updated matrix via indexing? nuh uh , with ptr ari baby!
    printf("vec2 after pointer arithematic\n");
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            printf("%d ", *(*(ptovec2 + i) + j));
        }
        printf("\n");
    }
}
// 5b array of pointers

void arrofptrs()
{
    // alright lets work on array of pointers where each element of array acts as a pointer
    // a. array of strings
    char *strs[] = {"welcome", "to", "pointer", "bible"};
    // lets print each string individually
    for (int i = 0; i < 4; ++i)
    {
        printf("%s \n", *(strs + i));
    }
    // can we modify it? lets find out hehe
    //  strcpy(*(strs + 2), "ptrs"); //oh no a segfault but why?
    // the reason why we got a segfault is beacause we tried to overrite the string literal that lives in .rodata and making and changes to .rodata is bad thus the segfault

    // b. array of ptrs to heap allocated ints

    int *heapnums[3];
    for (int i = 0; i < 3; ++i)
    {
        heapnums[i] = malloc(sizeof(int));
        if (heapnums != NULL)
        {
            *heapnums[i] = (i + 1) * 10;
            printf("num %d is : %d \n", i, *heapnums[i]);
        }
        else
        {
            exit(1);
        }
    }
    // time to free the memory
    for (int i = 0; i < 3; ++i)
    {
        free(heapnums[i]);
    }
    // c .array of ptrs to arrays hehe

    int a[] = {1, 2, 3};
    int b[] = {4, 5, 6};
    int c[] = {7, 8, 9};

    int *vec1[] = {a, b, c}; // these arrays decay to first element essentially making them addresses for &vec[i] to store
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            printf("%d ", vec1[i][j]);
        }
        printf("\n");
    }

    // d. allocate 2d matrix with array of pointers

    int **arr_2d = malloc(sizeof(int *) * 3); // 3 rows of arrays of pointers
    // now iterate through rows and init each row with no of columns
    if (arr_2d == NULL)
    {
        printf("failed!\n");
        exit(1);
    }
    for (int i = 0; i < 3; ++i)
    {
        arr_2d[i] = malloc(sizeof(int) * 4); // this allocates 4 cols for each row
    }
    // now lets use the allocated space and store something
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            arr_2d[i][j] = j + 1;
        }
    }
    // time to print stuff
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 4; ++j)
        {
            printf("%d ", arr_2d[i][j]); // 1 2 3 4
        }
        printf("\n");
    }
    // free each segment
    for (int i = 0; i < 3; ++i)
    {
        free(arr_2d[i]);
    }
    free(arr_2d);
}

// 6. pointers to strings

void pstrings()
{
    char *str = "ace"; // pointer to address where memory string is stored , careful the memory stored there is .rodata ,it cannot be modified
                       // str is a string literal which are immutable in c
                       // str[2] = 'r'; // segfault , core dumped because you writing into data which is not for you to write
    printf("the name is %s \n", str);
    // now lets access each element via ptr ari
    for (int i = 0; i < 3; ++i)
    {
        printf("%c ", *(str + i));
    }
    printf("\n");
    // str[2] = 'r'; // segfault , (core dumped) because you writing into data in a segement which is not for you to write
    // now if you want mutable strings in c , you can use do it in ways
    //  method 1 , use strings as char array
    char str1[] = "hello"; // a copy of string is stored in stack
    str1[3] = 'e';         // perfectly fine
    printf("%s\n", str1);
    printf("the name is %s \n", str);

    // method 2
    // using strdup() to modify strings
    // strdup creates a heap allocation for your strings
    char *str2 = "hey whatsup";
    char *str2dup = strdup(str2); // this creates a heap allocation for str2 and it returns a pointer to heap alloc'd memory
    str2dup[3] = '-';
    printf("%s \n", str2dup);
    free(str2dup);

    // now lets do array of strings
    // remember strings are just char arrays decayed to first char , so str is just char * and
    // an array of strings refer to bunch of strings stored in a array , so each element in the array is
    // a pointer to char  , so array of strings is just an array of pointers to char
    char *strs[] = {
        "hello",
        "welcome",
        "to",
        "pointer land"};
    // now since each element stores a pointer to rodata , it can be classifed as array of pointers to char
    // lets access each string
    for (int i = 0; i < 4; ++i)
    {
        printf("%s \n", *(strs + i));
    }
    // time for some command line arguments
    // refer commandline.c program
}

// 7 heap malarkey and mastery hehe, probably the most verbose section of this code
void pheap()
{
    // heap is a memory segement which the os will provide upon request
    // heap is generally slower than stack due to external fragemenation leading to fewer cache hits
    // managing memory by yourself is a huge differntiating factor in c
    // it has alot pitfalls , such as use after free, double free , memory leaks , ub ,segfaults etc
    int *heapint = malloc(sizeof(int)); // allocates 4 bytes of int in heap and provides an address to that  block
    *heapint = 42;
    printf("%d\n", *heapint);
    free(heapint); // dont forget to free after usage !
                   // now lets do dyanmic struct allocation
    // refer to dyanmicstruct.c

    // now lets do 2d and 3d allocations (extermely wild and nauseating)
    //  1a. 2d matrix, 2d array of ints via array pointers
    int rows = 3, cols = 4;
    int **arr_2d = malloc(sizeof(int *) * rows); // you need int ** on lhs because it you need to store a pointer and use it to access other pointers
    for (int i = 0; i < rows; ++i)
    {
        arr_2d[i] = malloc(sizeof(int) * cols);
    }
    // now lets fill the array with values
    for (int i = 0; i < rows; ++i)
    {
        for (int j = 0; j < cols; ++j)
        {
            arr_2d[i][j] = j + 10;
        }
    }
    // lets print the stuff
    for (int i = 0; i < rows; ++i)
    {
        for (int j = 0; j < cols; ++j)
        {
            printf("%d ", arr_2d[i][j]);
        }
        printf("\n");
    }
    // now dont forget to free memory
    for (int i = 0; i < rows; ++i)
    {
        free(arr_2d[i]); // free each row
    }
    free(arr_2d); // free entire memory now

    // 2 ,2d matrix of strings, array of strings via array of strings
    rows = 2, cols = 3;
    char ***str_2d = malloc(sizeof(char **) * rows);
    for (int i = 0; i < rows; ++i)
    {
        str_2d[i] = malloc(sizeof(char *) * cols);
        // now lets assign strings into memory
        for (int j = 0; j < cols; ++j)
        {
            str_2d[i][j] = malloc(sizeof(char) * 10);
            strcpy(str_2d[i][j], "hey");
        }
    }
    // printing time
    for (int i = 0; i < rows; ++i)
    {
        for (int j = 0; j < cols; ++j)
        {
            printf("%s ", str_2d[i][j]);
        }
        printf("\n");
    }
    // time to free stuff
    for (int i = 0; i < rows; ++i)
    {
        for (int j = 0; j < cols; ++j)
        {
            free(str_2d[i][j]);
        }
        free(str_2d[i]);
    }
    free(str_2d);
}
// 8 function pointers

int main()
{
    // pbasics();
    // parithmetic();
    // ptoarrs();
    // arrofptrs();
    // pstrings();
    // pheap();
    return 0;
}