configure_file(CMakeLists.txt.in gflags/CMakeLists.txt)

include(CTest)

set(BUILD_TESTING OFF)

execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
  RESULT_VARIABLE result
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/gflags )
if(result)
  message(FATAL_ERROR "CMake step for gflags failed: ${result}")
endif()

execute_process(COMMAND ${CMAKE_COMMAND} --build .
  RESULT_VARIABLE result
  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/gflags )
if(result)
  message(FATAL_ERROR "Build step for gflags failed: ${result}")
endif()

add_subdirectory(${CMAKE_CURRENT_BINARY_DIR}/gflags-src
                 ${CMAKE_CURRENT_BINARY_DIR}/gflags-build)


if(NOT TARGET gflags::gflags)
  add_library(gflags::gflags ALIAS gflags)
endif()
