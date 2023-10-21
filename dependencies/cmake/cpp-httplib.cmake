include(FetchContent)

FetchContent_Declare(cpp-httplib
  GIT_REPOSITORY https://github.com/yhirose/cpp-httplib
  GIT_TAG v0.14.1
)
FetchContent_MakeAvailable(cpp-httplib)