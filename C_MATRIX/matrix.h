#if !defined(_matrix_h_)
#define _matrix_h_

struct matrix_t {
    int width;
    int height;
    double **data;
    struct matrix_t* (*add)(struct matrix_t*, const struct matrix_t*);
    struct matrix_t* (*subtract)(struct matrix_t*, const struct matrix_t*);
    void (*display)(const struct matrix_t*);
};

struct matrix_t* matrix_create(int width, int height, int *err_code);
void matrix_free(struct matrix_t *m);
struct matrix_t* matrix_add(struct matrix_t* m1, const struct matrix_t* m2);
struct matrix_t* matrix_subtract(struct matrix_t* m1, const struct matrix_t* m2);
void matrix_display(const struct matrix_t* m);


#endif
