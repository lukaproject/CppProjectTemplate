include(FetchContent)

FetchContent_Declare(nlohmannjson
  GIT_REPOSITORY https://github.com/ArthurSonzogni/nlohmann_json_cmake_fetchcontent
  GIT_TAG v3.11.2
)
FetchContent_MakeAvailable(nlohmannjson)