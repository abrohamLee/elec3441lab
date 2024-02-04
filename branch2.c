//branch2.c
int branch2(int a, int b){
    int c;
    if(b <= a) {
        c = a - b;
    }
    else{
        c = a + b;
    }
    return c;
}
