//funCall2.c
double fun(double* p1, double* p2);
int funcall2(double a, double b){
    double c = fun(&a, &b);
    return (int)c;
}

double fun(double* p1, double* p2){
    return (*p1 + *p2);
}
