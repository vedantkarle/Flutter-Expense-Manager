#include <stdio.h>

int printUnion(int arr1[], int arr2[], int m, int, n)
{
    int i, j = 0;
    while (i < m && j < n)
    {
        if (arr1[i] < arr2[j])
        {
            printf(" %d ", arr1[i++]);
        }
        elseif(arr1[i] > arr2[j])
        {
            printf(" %d ", arr2[j++]);
        }
        else
        {
            printf(" %d ", arr2[j++]);
            i++;
        }
    }
    while (i < m)
        printf(" %d ", arr1[i++]);
    while (j < n)
    {
        printf(" %d ", arr2[j++])
    }
}