# Note: this file is generated by the gcc plugin, any change will be lost !!

cmake_minimum_required(VERSION 3.16)

set(PROJECT_PATH "$ENV{PROJECT_PATH}") 

# import helpers
include(${TOOLCHAIN_PATH}/cmake/helpers.cmake)

# libraries
set(LIBRARY_PATH "/home/seb/git/cmsis/test/hello_world/dist/cmsis")
include(/home/seb/git/cmsis/test/hello_world/dist/cmsis/cmake/cmsis.cmake)


# show informations about includes
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -H")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -H")

# set build options from toolchain file
set(CMAKE_COMMON_FLAGS "${COMMON_FLAGS}") 
set(CMAKE_ASM_FLAGS "${ASM_FLAGS}")
set(CMAKE_C_FLAGS "${C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CXX_FLAGS}")

message("Build type ${CMAKE_BUILD_TYPE}")
message("C flags: ${CMAKE_C_FLAGS}")
message("CPP flags: ${CMAKE_CXX_FLAGS}")
message("Link flags: ${LINKER_FLAGS}")
message("CMAKE_ASM_COMPILER ${CMAKE_ASM_COMPILER}")
message("CMAKE_C_COMPILER ${CMAKE_C_COMPILER}")
message("CMAKE_CXX_COMPILER ${CMAKE_CXX_COMPILER}")
message("CMAKE_CXX_LINK_EXECUTABLE ${CMAKE_CXX_LINK_EXECUTABLE}")

# build binaries
add_subdirectory(firmware)
