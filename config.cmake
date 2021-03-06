add_target (__DEFAULT
    KRAL_PATH       "${CMAKE_CURRENT_LIST_DIR}/KRAL/" 
    PACKAGE_DIRS    "${CMAKE_CURRENT_LIST_DIR}/KRAL_libs;${CMAKE_CURRENT_LIST_DIR}/packages"  
    PROJECTS_ROOT   "${CMAKE_CURRENT_LIST_DIR}/projects"
    PLATFORM        osx
    PROJECT_TYPE    "Unix Makefiles"
    BUILD_TYPE      debug
)

add_target (cuda_basic_example
    INHERIT         __DEFAULT
    PLATFORM        osx
    PROJECT_TYPE    Xcode
    PROJECT_DIR     ${CMAKE_CURRENT_LIST_DIR}/cuda_basic_example
    BUILD_DIR       cuda_basic_example
    CUSTOM_ARGS
        "-Wdev"
        " -DRUNTIME_DIR=debug"
        " -DIOS_SDK_PATH=\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs\""
        " -DTARGETSDK=MacOSX10.9.sdk"
        " -DCMAKE_XCODE_ATTRIBUTE_CLANG_CXX_LANGUAGE_STANDARD=c++11"
        " -DCMAKE_XCODE_ATTRIBUTE_CLANG_CXX_LIBRARY=libc++" 
    COMPILER_ARGS_DEBUG
        "-g -O0 -Wall -DPLATFORM_OSX -std=c++11 -stdlib=libc++" 
    COMPILER_ARGS_RELEASE
        "-O4 -Wall -DPLATFORM_OSX -std=c++11 -stdlib=libc++"
)

add_target (make_greyscale
    INHERIT         cuda_basic_example
    PROJECT_DIR     ${CMAKE_CURRENT_LIST_DIR}/make_greyscale
    BUILD_DIR       make_greyscale
)

