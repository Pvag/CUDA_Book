// Ex. 4
// =====
// Compile withouth the flag -arch sm_20
//
// The result is: it works as before (with the flag), on my platform.

#include <stdio.h>

__global__
void helloFromGPU() {
  printf("Hello World from GPU!\n");
}

int main(int argc, char *argv[]) {
  // Hello from CPU
  printf("Hello World from CPU!\n");

  helloFromGPU<<<1, 10>>>();
  cudaDeviceReset();

  return 0;
}
