#ifndef CLASSB
#define CLASSB

#include <iostream>
#ifdef linux
    #define BCLASS_API 
#elif defined(WIN32)
    #define BCLASS_API __declspec(dllexport)
#endif


class BCLASS_API B
{
public:
    B(){}
    void print();
};

#endif
