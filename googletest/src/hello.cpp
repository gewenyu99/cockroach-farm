#include "hello.h"

std::string HelloWorld::getGreeting() const {
    return "Hello, World!";
}

int HelloWorld::add(int a, int b) const {
    return a + b;
}

bool HelloWorld::isPositive(int number) const {
    return number > 0;
}

