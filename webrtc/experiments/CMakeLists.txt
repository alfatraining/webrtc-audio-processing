add_custom_command(
    OUTPUT
        registered_field_trials.h
    COMMENT "Generating registered_field_trials.h"
    COMMAND
        ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}
    COMMAND
        python3 ${CMAKE_CURRENT_SOURCE_DIR}/field_trials.py header --output
        ${CMAKE_CURRENT_BINARY_DIR}/registered_field_trials.h
)

add_library(experiments INTERFACE registered_field_trials.h)

target_include_directories(experiments INTERFACE ${CMAKE_CURRENT_BINARY_DIR}/..)
