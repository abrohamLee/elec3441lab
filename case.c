//case.c
int casestmt(int a){
    int b;
    switch(a){
        case 10:
            b = a;
            break;
        case 20:
            b = a + a;
            break;
        default:
            b = a + a + a;
            break;
    }
    return b;
}
