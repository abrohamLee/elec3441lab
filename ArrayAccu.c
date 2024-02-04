//ArrayAccu.c
unsigned ArrayAccu(unsigned *ptr, int N) {
  unsigned Sum = 0;
  int i;
  for (i = 0; i < N; i++) {
    Sum += *(ptr+i);
  }
  return Sum;
}
int main(){
    unsigned ArrayA[5] = {1, 2, 3, 4, 5};
    int N = 5;
    unsigned Sum;
    Sum = ArrayAccu(ArrayA, N);
    return Sum;
}

