//funCall1.c
double fun(double x, double y);
int funcall1(double a, double b){
    double c = fun(a, b);
    return (int)c;
}

double fun(double x, double y){
    return x+y;
}
