cmake_minimum_required(VERSION 3.15)
project(dummy)

set(CMAKE_CXX_STANDARD 11)

add_library(dummy SHARED library.cpp library.h)

install(TARGETS dummy DESTINATION lib)
install(FILES library.h DESTINATION include)

