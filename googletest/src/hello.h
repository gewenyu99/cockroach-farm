#ifndef HELLO_H
#define HELLO_H

#include <string>

class HelloWorld {
public:
    std::string getGreeting() const;
    int add(int a, int b) const;
    bool isPositive(int number) const;
};

#endif // HELLO_H

