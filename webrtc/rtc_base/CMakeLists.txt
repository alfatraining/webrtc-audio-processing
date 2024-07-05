add_library(rtc_base OBJECT
    "checks.cc"
    "event.cc"
    "event_tracer.cc"
    "experiments/field_trial_parser.cc"
    "logging.cc"
    "memory/aligned_malloc.cc"
    "platform_thread.cc"
    "platform_thread_types.cc"
    "race_checker.cc"
    "string_encode.cc"
    "string_to_number.cc"
    "string_utils.cc"
    "strings/string_builder.cc"
    "synchronization/mutex.cc"
    "synchronization/rw_lock_wrapper.cc"
    "synchronization/yield.cc"
    "synchronization/yield_policy.cc"
    "synchronization/sequence_checker.cc" ## confusing... this wasn't required by the meson build for some reason
    "system/file_wrapper.cc"
    "time_utils.cc"
    "zero_memory.cc"
)

if(WIN32)
    target_sources(rtc_base PRIVATE "synchronization/rw_lock_win.cc")
else()
    target_sources(rtc_base PRIVATE "synchronization/rw_lock_posix.cc")
endif()

target_link_libraries(rtc_base
    PRIVATE absl::meta)

install(FILES 
    "arraysize.h"
    "checks.h"
    "constructor_magic.h"
    "deprecation.h"
    "ref_count.h"
    "type_traits.h"
    DESTINATION include/rtc_base
)

install(FILES 
    "numerics/safe_compare.h"
    DESTINATION include/rtc_base/numerics
)

install(FILES 
    "system/file_wrapper.h"
    "system/inline.h"
    "system/rtc_export.h"
    DESTINATION include/rtc_base/system
)
