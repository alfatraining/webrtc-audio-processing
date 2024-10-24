add_library(
    isac_vad
    OBJECT
    "codecs/isac/main/source/filter_functions.c"
    "codecs/isac/main/source/isac_vad.c"
    "codecs/isac/main/source/pitch_estimator.c"
    "codecs/isac/main/source/pitch_filter.c"
)

install(FILES codecs/isac/bandwidth_info.h DESTINATION include/modules/audio_coding/codecs/isac)

install(FILES codecs/isac/main/source/settings.h DESTINATION include/modules/audio_coding/codecs/isac/main/source)

install(FILES codecs/isac/main/include/isac.h DESTINATION include/modules/audio_coding/codecs/isac/main/include)

# isac_vad_dep = declare_dependency(sources: isac_vad_sources)

add_library(
    webrtc_audio_coding
    "codecs/isac/main/source/arith_routines.c"
    "codecs/isac/main/source/arith_routines_hist.c"
    "codecs/isac/main/source/arith_routines_logist.c"
    "codecs/isac/main/source/audio_decoder_isac.cc"
    "codecs/isac/main/source/audio_encoder_isac.cc"
    "codecs/isac/main/source/bandwidth_estimator.c"
    "codecs/isac/main/source/crc.c"
    "codecs/isac/main/source/decode_bwe.c"
    "codecs/isac/main/source/decode.c"
    "codecs/isac/main/source/encode.c"
    "codecs/isac/main/source/encode_lpc_swb.c"
    "codecs/isac/main/source/entropy_coding.c"
    "codecs/isac/main/source/filterbanks.c"
    "codecs/isac/main/source/intialize.c"
    "codecs/isac/main/source/isac.c"
    "codecs/isac/main/source/lattice.c"
    "codecs/isac/main/source/lpc_analysis.c"
    "codecs/isac/main/source/lpc_gain_swb_tables.c"
    "codecs/isac/main/source/lpc_shape_swb12_tables.c"
    "codecs/isac/main/source/lpc_shape_swb16_tables.c"
    "codecs/isac/main/source/lpc_tables.c"
    "codecs/isac/main/source/pitch_gain_tables.c"
    "codecs/isac/main/source/pitch_lag_tables.c"
    "codecs/isac/main/source/spectrum_ar_model_tables.c"
    "codecs/isac/main/source/transform.c"
    $<TARGET_OBJECTS:rtc_base>
    $<TARGET_OBJECTS:api>
    $<TARGET_OBJECTS:common_audio>
    $<TARGET_OBJECTS:isac_vad>
    $<TARGET_OBJECTS:libfft>
    $<TARGET_OBJECTS:system_wrappers>
)

target_link_libraries(
    webrtc_audio_coding
    PUBLIC
        absl::optional
        absl::bad_optional_access
)

# libwebrtc_audio_coding = library(ac_project_name,
#     webrtc_audio_coding_sources,
#     dependencies: [base_dep, api_dep, common_audio_dep, system_wrappers_dep, fft_dep, isac_vad_dep] + common_deps,
#     include_directories: webrtc_inc,
#     c_args: common_cflags,
#     cpp_args: common_cxxflags,
#     soversion: ac_minor_version,
#     install: true
# )

install(
    TARGETS
        webrtc_audio_coding
    EXPORT webrtc-audio-processing-targets
    LIBRARY
        DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE
        DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME
        DESTINATION ${CMAKE_INSTALL_BINDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
