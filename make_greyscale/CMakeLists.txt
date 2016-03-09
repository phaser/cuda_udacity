cmake_minimum_required (VERSION 2.8)
set (PROJ_NAME "make_greyscale")
set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${KRAL_PATH})
project (${PROJ_NAME})
include (main)

module(${PROJ_NAME}
    ENABLE_CUDA
)
