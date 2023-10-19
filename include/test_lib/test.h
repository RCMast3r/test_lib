#include <string>
#include <iostream>
class TestClass{       // The class
  private:
    void _test_call();
  public:
    void call();
    int myNum;        
    std::string myString;  // Attribute (string variable)
};