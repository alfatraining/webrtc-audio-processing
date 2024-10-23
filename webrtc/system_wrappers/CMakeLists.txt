add_library(
    system_wrappers
    OBJECT
    "source/cpu_features.cc"
    "source/field_trial.cc"
    "source/metrics.cc"
    "source/sleep.cc"
    "source/denormal_disabler.cc"
)

target_link_libraries(
    system_wrappers
    PRIVATE
        absl::strings
        experiments
)

# [ks]: we probably don't need to install these as only .cc files access those
# install(FILES
#   "system_wrappers/cpu_features_wrapper.h"
#   "system_wrappers/metrics.h"
#   "system_wrappers/sleep.h"
#   DESTINATION include
# )
