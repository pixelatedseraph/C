#include <stdio.h>
#include <stdlib.h>
int main()
{

    int **arr_2d = malloc(sizeof(int *) * 3);
    for (int i = 0; i < 3; ++i)
    {
        *(arr_2d + i) = malloc(sizeof(int) * 6);
    }
    int counter = 1;
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            *(*(arr_2d + i) + j) = counter;
            counter++;
        }
    }

    // arr 2
    int **arr_2d1 = malloc(sizeof(int *) * 3);
    for (int i = 0; i < 3; ++i)
    {
        *(arr_2d1 + i) = malloc(sizeof(int) * 6);
    }
    int counter1 = 2;
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            *(*(arr_2d1 + i) + j) = counter1;
            counter1++;
        }
    }

    // for arr 0

    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            printf("%d ", *(*(arr_2d + i) + j));
        }
        printf("\n");
    }
    // print 2
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            printf("%d ", *(*(arr_2d1 + i) + j));
        }
        printf("\n");
    }

    // sum
    int **arr_2d2 = malloc(sizeof(int *) * 3);
    for (int i = 0; i < 3; ++i)
    {
        *(arr_2d2 + i) = malloc(sizeof(int) * 6);
    }
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            *(*(arr_2d2 + i) + j) = *(*(arr_2d + i) + j) + *(*(arr_2d1 + i) + j);
        }
    }

    // print 3
    for (int i = 0; i < 3; ++i)
    {
        for (int j = 0; j < 6; ++j)
        {
            printf("%d ", *(*(arr_2d2 + i) + j));
        }
        printf("\n");
    }

    return 0;
}


