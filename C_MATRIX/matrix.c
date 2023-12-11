#include "matrix.h"
#include <stdlib.h>
#include <stdio.h>

struct matrix_t* matrix_create(int width, int height, int *err_code){
    if(width<1 || height<1){
        if(err_code!=NULL) *err_code=1;
        return NULL;
    }
    struct matrix_t* matrix = calloc(1, sizeof(struct matrix_t));
    if(matrix==NULL){
        if(err_code!=NULL) *err_code=2;
        return NULL;
    }
    double** tab=calloc(height, sizeof(double*));
    if(tab==NULL){
        if(err_code!=NULL) *err_code=2;
        free(matrix);
        return NULL;
    }
    for(int i=0; i<height; i++){
        *(tab+i)=calloc(width, sizeof(double));
        if(*(tab+i)==NULL){
            for(int y=0; y<i; y++){
                free(*(tab+y));
            }
            free(tab);
            free(matrix);
            if(err_code!=NULL) *err_code=2;
            return NULL;
        }
    }

    matrix->height=height;
    matrix->width=width;
    matrix->data=tab;
    matrix->add=matrix_add;
    matrix->subtract=matrix_subtract;
    matrix->display=matrix_display;
    if(err_code!=NULL) *err_code=0;
    return matrix;
}
void matrix_free(struct matrix_t *m){
    if(m==NULL || m->height<1 || m->width<1) return;

    for(int i=0; i<m->height; i++){
        free(*((m->data)+i));
    }
    free(m->data);
    free(m);
}
struct matrix_t* matrix_add(struct matrix_t* m1, const struct matrix_t* m2){
    if(m1==NULL || m2==NULL || m1->width!=m2->width || m1->height!=m2->height || m1->data==NULL || m2->data==NULL
       || m1->width<1 || m1->height<1 || m2->width<1 || m2->height<1) return NULL;

    for(int i=0; i<m1->height; i++){
        for(int y=0; y<m1->width; y++){
            *(*((m1->data)+i)+y)+=*(*((m2->data)+i)+y);
        }
    }
    return m1;
}
struct matrix_t* matrix_subtract(struct matrix_t* m1, const struct matrix_t* m2){
    if(m1==NULL || m2==NULL || m1->width!=m2->width || m1->height!=m2->height || m1->data==NULL || m2->data==NULL
       || m1->width<1 || m1->height<1 || m2->width<1 || m2->height<1) return NULL;

    for(int i=0; i<m1->height; i++){
        for(int y=0; y<m1->width; y++){
            *(*((m1->data)+i)+y)-=*(*((m2->data)+i)+y);
        }
    }
    return m1;
}
void matrix_display(const struct matrix_t* m){
    if(m==NULL || m->data==NULL || m->height<1 || m->width<1) return;
    for(int i=0; i<m->height; i++){
        for(int y=0; y<m->width; y++) {
            printf("%f ", *(*((m->data)+i)+y));
        }
        printf("\n");
    }
}
