//branch.c
int branch(int a){
    int b;
    if(a == 10){
        b = a;
    }
    else if(a == 20){
        b = a + a;
    }
    else{
        b = a + a + a;
    }
    return b;
}
