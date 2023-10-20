#include "test.h"
void TestClass::call()
{
    _test_call();
}

void TestClass::_test_call(){
    std::cout <<"hello from my private member\n";
}