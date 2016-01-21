// Ex. 2
// =====
// Remove the call to cudaDeviceReset()
//
// The result is: nothing is printed from the device to the shell.

#include <stdio.h>

__global__
void helloFromGPU() {
  printf("Hello World from GPU!\n");
}

int main(int argc, char *argv[]) {
  // Hello from CPU
  printf("Hello World from CPU!\n");

  helloFromGPU<<<1, 10>>>();
//  cudaDeviceReset();

  return 0;
}
