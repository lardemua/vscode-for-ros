cmake_minimum_required(VERSION 3.5)

project(vscode-tutorial)

set(CMAKE_CXX_STANDARD 14)

include_directories(./include)

add_executable(tutorial
    src/main.cpp
    src/tutorial.cpp)
