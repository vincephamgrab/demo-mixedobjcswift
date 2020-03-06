"""Definitions for handling Bazel repositories used by the Apple rules."""

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
)
load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
)

def _maybe(repo_rule, name, **kwargs):
    """Executes the given repository rule if it hasn't been executed already.
    Args:
      repo_rule: The repository rule to be executed (e.g.,
          `http_archive`.)
      name: The name of the repository to be defined by the rule.
      **kwargs: Additional arguments passed directly to the repository rule.
    """
    if not native.existing_rule(name):
        repo_rule(name = name, **kwargs)

def rules_ios_dependencies():
    """Fetches repositories that are dependencies of the `rules_apple` workspace.
    """
    _maybe(
        git_repository,
        name = "build_bazel_rules_apple",
        commit = "e99db2e968971506ac1a6d64a29c6676ca04b51c",
        remote = "https://github.com/bazelbuild/rules_apple.git",
        shallow_since = "1582818815 -0800",
    )

    _maybe(
        git_repository,
        name = "build_bazel_rules_swift",
        commit = "1f2201706d6b4dcf3675c4c5393fe42a30948859",
        remote = "https://github.com/bazelbuild/rules_swift.git",
        shallow_since = "1582937559 -0800",
    )

    _maybe(
        git_repository,
        name = "build_bazel_apple_support",
        commit = "501b4afb27745c4813a88ffa28acd901408014e4",
        remote = "https://github.com/bazelbuild/apple_support.git",
        shallow_since = "1577729628 -0800",
    )

    _maybe(
        http_archive,
        name = "bazel_skylib",
        sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        ],
    )

    _maybe(
        git_repository,
        name = "build_bazel_rules_ios",
        remote = "https://github.com/ob/rules_ios.git",
        commit = "c0e637ef99d79efab53e704b0acb39cb94a5cd4e",
        shallow_since = "1582164127 -0800",
    )
