include_directories(.)

if(ANDROID)
    add_subdirectory(sdk/android/native_api)
endif()

add_subdirectory(api)
add_subdirectory(common_audio)
add_subdirectory(experiments)
add_subdirectory(rtc_base)
add_subdirectory(system_wrappers)
add_subdirectory(third_party)
add_subdirectory(modules)
