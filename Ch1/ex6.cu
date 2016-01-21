// Ex. 6
// =====
// Modify the kernel so that each thread will also include its number.

#include <stdio.h>

__global__
void helloFromGPU() {
  printf("Hello World from thread number %d!\n", threadIdx.x);
}

int main(int argc, char *argv[]) {
  // Hello from CPU
  printf("Hello World from CPU!\n");

  helloFromGPU<<<1, 10>>>();
  cudaDeviceReset();

  return 0;
}
