#include <iostream>
#include <classA.h>
#include <classB.h>
#include "hello.h"
int main(int argc, char *argv[])
{
   A AObject;
   AObject.print();

   B BObject;
   BObject.print();

   Hello HObject;
   HObject.print();

   return 0;
}
