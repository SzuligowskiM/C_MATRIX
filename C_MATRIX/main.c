#include <stdio.h>
#include "matrix.h"

int main() {
    int width, height;
    char op='\0';
    printf("Podaj wymiary macierzy:");
    int res=scanf("%d %d", &width, &height);
    if(res!=2){
        printf("Incorrect input");
        return 1;
    }
    if(width<1 || height<1){
        printf("Incorrect input data");
        return 2;
    }
    struct matrix_t* first_m=matrix_create(width, height, NULL);
    if(first_m==NULL){
        printf("Failed to allocate memory");
        return 8;
    }
    struct matrix_t* second_m=matrix_create(width, height, NULL);
    if(second_m==NULL){
        printf("Failed to allocate memory");
        matrix_free(first_m);
        return 8;
    }
    printf("Podaj wartości pierwszej macierzy: ");
    for(int i=0; i<height; i++){
        for(int y=0; y<width; y++){
            res=scanf("%lf", (*((first_m->data)+i)+y));
            if(res!=1){
                printf("Incorrect input");
                matrix_free(first_m);
                matrix_free(second_m);
                return 1;
            }
        }
    }
    printf("Podaj wartości drugiej macierzy: ");
    for(int i=0; i<height; i++){
        for(int y=0; y<width; y++){
            res=scanf("%lf", (*((second_m->data)+i)+y));
            if(res!=1){
                printf("Incorrect input");
                matrix_free(first_m);
                matrix_free(second_m);
                return 1;
            }
        }
    }
    while (getchar()!='\n');
    printf("Podaj operator: ");
    scanf("%c", &op);
    switch (op) {
        case '+':
            first_m=matrix_add(first_m, (const struct matrix_t*)second_m);
            break;
        case '-':
            first_m=matrix_subtract(first_m, (const struct matrix_t*)second_m);
            break;
        default:
            printf("Incorrect input data");
            matrix_free(first_m);
            matrix_free(second_m);
            return 2;
    }
    matrix_display(first_m);
    matrix_free(first_m);
    matrix_free(second_m);
    return 0;
}
