load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

apple_framework(
    name = "MixedObjcSwift",
    module_name = "MixedObjcSwift",
    public_headers = glob([
      "MixedObjcSwift/**/*.h",
    ]),
    srcs = glob([
      "MixedObjcSwift/**/*.swift",
      "MixedObjcSwift/**/*.m",
    ]),
)
