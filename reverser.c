#include <stdio.h>
#include <stdlib.h>

int ct = 9;
int swaps = 4;

void intPrint(int *ints) {
    for (int i = 0; i < ct; i++) {
        printf("%d", *(ints + i));
    }
    printf("\n");
    return;
}

int* revInts(int *ints) {
    int *ret = malloc(sizeof(int) * ct);
    for (int i = 0; i < ct; i++) {
        *(ret + i) = *(ints + ct - 1 - i);
    }
    return ret;
}

void revInPlace(int *ints) {
    int tmp;
    printf("running %d swaps...\n", ct % 2);
    for (int i = 0; i <= swaps; i++) {
        tmp = *(ints + i);
        int *ptr = ints + ct - 1 - i;
        printf("swapping %d and %d\n", tmp, *ptr);
        *(ints + i) = *ptr;
        *ptr = tmp;
    }
    return;
}

int main(int argc, char** argv) {

    int *ints = malloc(sizeof(int) * ct);
    printf("address of ints in main: %p\n", ints);
    for (int i = 0; i < ct; i++) {
        *(ints + i) = i;
    }
    printf("starting with:");
    intPrint(ints);
    int* revs = revInts(ints);
    printf("reversed: ");
    intPrint(revs);
    printf("ints is still:");
    intPrint(ints);
    revInPlace(ints);
    printf("now ints is:");
    intPrint(ints);
    free(ints);
    free(revs);
	return 0;

//    int x = 10;
//    int *y = malloc(sizeof(int));
//    int z = 12;
//    *y = 11;
//    printf("y points to %d\n", *y);
//    *y = x;
//    printf("y points to %d\n", *y);
//    free(y);
//    printf("addresses x %p y %p z %p\n", &x, y, &z);
    //printf("value of y is %d\n", *y);
}
