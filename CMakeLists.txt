cmake_minimum_required(VERSION 3.19)
project(Calculatrice C)

set(CMAKE_C_STANDARD 99)

add_executable(Calculatrice sources/main.c sources/addition.c header/addition.h sources/soustraction.c header/soustraction.h sources/multiplication.c header/multiplication.h sources/division.c header/division.h)