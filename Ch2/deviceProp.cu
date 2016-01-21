#include <stdio.h>

int main(void) {
  cudaDeviceProp deviceProp;
  int dev = 0;
  cudaGetDeviceProperties(&deviceProp, dev);
  printf("Device number %d has name %s\n", dev, deviceProp.name);
  printf("Clock freq. (KHz): %d\n", deviceProp.clockRate);
  printf("The max grid size in x: %d, y: %d, z: %d\n", deviceProp.maxGridSize[0], \
     deviceProp.maxGridSize[1], deviceProp.maxGridSize[2]);

  return 0;
}
