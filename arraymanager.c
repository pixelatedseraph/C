#include <stdio.h>
#include <stdlib.h>

int main()
{
    int vec1[5] = {1, 2, 3, 4, 5};
    int (*a)[5] = &vec1;
    for (int i = 0; i < 5; ++i)
    {
        printf("%d ", *(*(a) + i));
    }

    int vec2[3][4] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12}};

    int (*b)[4] = vec2; // pointer to whole array
    for (int i = 0; i < 4; ++i)
    {
        printf("%d ", *(*(b) + i));
    }

    return 0;
}