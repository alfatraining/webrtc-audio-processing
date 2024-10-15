add_library(android_native_api OBJECT
    "stacktrace/stacktrace.h"
    "stacktrace/stacktrace.cc"
)

target_link_libraries(android_native_api
    PRIVATE absl::base)
