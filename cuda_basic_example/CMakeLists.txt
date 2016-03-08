cmake_minimum_required (VERSION 2.8)
set (PROJ_NAME "cuda_simple_example")
set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${KRAL_PATH})
project (${PROJ_NAME})
include (main)

find_package(CUDA REQUIRED)
if (CUDA_FOUND)
    #    set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-O3 -gencode arch=compute_20,code=sm_20)
    cuda_add_executable(${PROJ_NAME} "${CMAKE_CURRENT_LIST_DIR}/source/common/basic_example.cu")
endif()

