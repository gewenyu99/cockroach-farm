load("@rules_go//go:def.bzl", "go_binary", "go_library", "go_test")

go_binary(
    name = "hello",
    embed = [":main_lib"],
    visibility = ["//visibility:public"],
)

go_library(
    name = "main_lib",
    srcs = ["hello.go"],
    importpath = "example.com/main",
    visibility = ["//visibility:private"],
)

go_test(
    name = "hello_test",
    srcs = ["hello_test.go"],
    embed = [":main_lib"],
)
