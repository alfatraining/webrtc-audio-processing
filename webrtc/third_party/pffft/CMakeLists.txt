add_library(pffft OBJECT "src/pffft.c")

target_compile_definitions(pffft PRIVATE _GNU_SOURCE)

if(WIN32)
    target_compile_definitions(pffft PRIVATE _USE_MATH_DEFINES)
endif()

if(EMSCRIPTEN)
    add_compile_definitions(PFFFT_SIMD_DISABLE)
endif()
