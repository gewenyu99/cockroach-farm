cmake_minimum_required(VERSION 3.14)
project(hello_test)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Create the main library
add_library(hello_lib src/hello.cpp)

# Create test executable
enable_testing()
add_executable(hello_test test/hello_test.cpp)
target_link_libraries(hello_test
  PRIVATE
    hello_lib
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(hello_test)

