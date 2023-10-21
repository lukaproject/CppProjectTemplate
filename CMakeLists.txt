cmake_minimum_required(VERSION 3.11)

project(CppProjectTemplate)

include(${PROJECT_SOURCE_DIR}/dependencies/cmake/glog.cmake)
include(${PROJECT_SOURCE_DIR}/dependencies/cmake/googletest.cmake)
include(${PROJECT_SOURCE_DIR}/dependencies/cmake/gflags.cmake)
include(${PROJECT_SOURCE_DIR}/dependencies/cmake/nlohmannjson.cmake)
include(${PROJECT_SOURCE_DIR}/dependencies/cmake/cpp-httplib.cmake)

add_executable(test-include ${PROJECT_SOURCE_DIR}/src/test-include.cc)
target_link_libraries(test-include
  PRIVATE 
  nlohmann_json::nlohmann_json
  httplib::httplib
)