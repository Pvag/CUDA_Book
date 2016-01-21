// Ex. 3
// =====
// Substitute cudaDeviceSynchronize() to the call to cudaDeviceReset()
//
// The result is: the device now prints to the shell, like with cudaDeviceReset().

#include <stdio.h>

__global__
void helloFromGPU() {
  printf("Hello World from GPU!\n");
}

int main(int argc, char *argv[]) {
  // Hello from CPU
  printf("Hello World from CPU!\n");

  helloFromGPU<<<1, 10>>>();
  cudaDeviceSynchronize();

  return 0;
}
