//loop1.c
#define N 5
int loop1(int a[], int b[]){
    int c[N], d[N];
    int i;
    for(i=0; i<N; i++){
        c[i] = a[i] + b[i];
    }

    for(i=0; i<N; i++){
        d[i] = a[i] - b[i];
    }
}
