#include <gtest/gtest.h>
#include "../src/hello.h"

class HelloWorldTest : public ::testing::Test {
protected:
    HelloWorld hello;
};

TEST_F(HelloWorldTest, GreetingTest) {
    EXPECT_EQ(hello.getGreeting(), "Hello, World!");
}

TEST_F(HelloWorldTest, AdditionTest) {
    EXPECT_EQ(hello.add(2, 3), 5);
    EXPECT_EQ(hello.add(-1, 1), 0);
    EXPECT_EQ(hello.add(0, 0), 0);
}

TEST_F(HelloWorldTest, IsPositiveTest) {
    EXPECT_TRUE(hello.isPositive(1));
    EXPECT_FALSE(hello.isPositive(0));
    EXPECT_FALSE(hello.isPositive(-1));
}

// Failing test
TEST_F(HelloWorldTest, FailingTest) {
    EXPECT_EQ(hello.add(2, 2), 5); // This will fail because 2 + 2 != 5
}

// Flaky test based on current time
TEST_F(HelloWorldTest, FlakyTest) {
    auto now = std::chrono::system_clock::now();
    auto seconds = std::chrono::duration_cast<std::chrono::seconds>(now.time_since_epoch()).count();
    EXPECT_EQ(seconds % 2, 0); // This will pass only if the current time in seconds is even
}
