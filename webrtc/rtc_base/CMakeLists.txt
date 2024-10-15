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
    "thread_annotations.h"
    # "experiments/registered_field_trials.h"
    # "synchronization/mutex.cc" # Gone with the upgrade
    # "synchronization/rw_lock_wrapper.cc"
    "synchronization/yield.cc"
    "synchronization/yield_policy.cc"
    # "synchronization/sequence_checker.cc" # NOTE: This should likely be removed!
    "synchronization/sequence_checker_internal.cc"
    "system/file_wrapper.cc"
    "system/warn_current_thread_is_deadlocked.h"
    "time_utils.cc"
    "zero_memory.cc"
    "checks.cc"
    "random.cc"
    "system_time.cc"
    "containers/flat_tree.cc"
    "units/unit_base.h"
    "numerics/divide_round.h"
    "numerics/event_based_exponential_moving_average.cc"
    "numerics/event_based_exponential_moving_average.h"
    "numerics/event_rate_counter.cc"
    "numerics/event_rate_counter.h"
    "numerics/exp_filter.cc"
    "numerics/exp_filter.h"
    "numerics/histogram_percentile_counter.cc"
    "numerics/histogram_percentile_counter.h"
    "numerics/math_utils.h"
    "numerics/mod_ops.h"
    "numerics/moving_average.cc"
    "numerics/moving_average.h"
    "numerics/moving_max_counter.h"
    "numerics/moving_percentile_filter.h"
    "numerics/percentile_filter.h"
    "numerics/rational.h"
    "numerics/running_statistics.h"
    "numerics/safe_compare.h"
    "numerics/safe_conversions.h"
    "numerics/safe_conversions_impl.h"
    "numerics/safe_minmax.h"
    "numerics/sample_counter.cc"
    "numerics/sample_counter.h"
    "numerics/sample_stats.cc"
    "numerics/sample_stats.h"
    "numerics/sequence_number_unwrapper.h"
    "numerics/sequence_number_util.h"
)

if(ANDROID)
    # this function is inlined on other platforms from the header file
    target_sources(rtc_base PRIVATE "system/warn_current_thread_is_deadlocked.cc")
endif()

# WARNING: evaluate this
target_link_options(rtc_base PUBLIC "/EHa")

target_link_libraries(rtc_base
    PRIVATE absl::meta
    PUBLIC experiments)

install(FILES 
    "arraysize.h"
    "checks.h"
    "constructor_magic.h"
    "deprecation.h"
    "ref_count.h"
    "type_traits.h"
    "thread_annotations.h"
    DESTINATION include/rtc_base
)

install(FILES 
    "numerics/safe_compare.h"
    "numerics/safe_conversions.h"
    "numerics/safe_conversions_impl.h"
    DESTINATION include/rtc_base/numerics
)

install(FILES 
    "system/file_wrapper.h"
    "system/inline.h"
    "system/rtc_export.h"
    DESTINATION include/rtc_base/system
)

install(FILES 
    "units/unit_base.h"
    DESTINATION include/rtc_base/units
)

install(FILES 
    "numerics/divide_round.h"
    DESTINATION include/rtc_base/numerics
)
