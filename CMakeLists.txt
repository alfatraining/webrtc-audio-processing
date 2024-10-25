cmake_minimum_required(VERSION 3.21)

project(webrtc-audio_processing VERSION 1.3)

enable_language(ASM)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(GNUInstallDirs)

find_package(absl CONFIG REQUIRED)

if(CMAKE_SYSTEM_PROCESSOR MATCHES "AMD64" OR CMAKE_SYSTEM_PROCESSOR MATCHES "x86_64")
    set(ARCH_X86_64 ON)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "(aarch64|arm64)")
    set(ARCH_ARM64 ON)
    set(ARCH_HAS_NEON ON)
elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(arm.*|ARM.*)")
    set(ARCH_ARMV7 ON)
    set(ARCH_HAS_NEON ON)
endif()

if(WIN32)
    add_compile_definitions(WEBRTC_WIN)
    add_compile_definitions(_WIN32)
    add_compile_definitions(__STDC_FORMAT_MACROS=1) # this one is for MinGW to get format specifiers from inttypes.h in C++
    add_compile_definitions(NOMINMAX) # Avoid min/max from windows.h which breaks std::min/max

    # Ensure M_PI etc are defined
    # [ks]: this seems to be already defined where needed in the source code
    # add_compile_definitions(_USE_MATH_DEFINES)
else()
    add_compile_definitions(WEBRTC_POSIX)
endif()

# This is here only for testing atm. Shared libraries are not supported yet.
if(BUILD_SHARED_LIBS)
    message(
        WARNING
        "Dynamic libraries are not supported yet by this build. Ensure you commit the cmake presets with BUILD_SHARED_LIBS=OFF"
    )
    add_compile_definitions(WEBRTC_LIBRARY_IMPL)
    add_compile_definitions(WEBRTC_ENABLE_SYMBOL_EXPORT)
endif()

if(APPLE)
    add_compile_definitions(WEBRTC_MAC)
elseif(ANDROID)
    add_compile_definitions(WEBRTC_ANDROID)
    add_compile_definitions(WEBRTC_LINUX)
    # os_deps += [cc.find_library('log')]
elseif(LINUX)
    add_compile_definitions(WEBRTC_LINUX)
    add_compile_definitions(WEBRTC_THREAD_RR)
endif()

if(ARCH_X86_64)
    add_compile_definitions(WEBRTC_ENABLE_AVX2)
    if(NOT MSVC)
        add_compile_options(-msse4.2)
    endif()
endif()

if(ARCH_ARM64)
    add_compile_definitions(WEBRTC_ARCH_ARM64)
endif()

if(ARCH_ARMV7)
    add_compile_definitions(WEBRTC_ARCH_ARM)
    add_compile_definitions(WEBRTC_ARCH_ARM_V7)
endif()

if(ARCH_HAS_NEON)
    add_compile_definitions(WEBRTC_HAS_NEON)
    add_compile_definitions(WEBRTC_DETECT_NEON)
    if(NOT ARCH_ARM64)
        # neon is mandatory on aarch64 and the compiler warns against using this flag for that target
        add_compile_options(-mfpu=neon)
    endif()
endif()

add_subdirectory(webrtc)

install(
    EXPORT webrtc-audio-processing-targets
    FILE webrtc-audio-processingConfig.cmake
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/webrtc-audio-processing
)
