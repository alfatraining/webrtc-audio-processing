add_library(webrtc_audio_processing
    rms_level.cc
    echo_detector/moving_max.h
    echo_detector/circular_buffer.h
    echo_detector/normalized_covariance_estimator.h
    echo_detector/normalized_covariance_estimator.cc
    echo_detector/moving_max.cc
    echo_detector/circular_buffer.cc
    echo_detector/mean_variance_estimator.cc
    echo_detector/mean_variance_estimator.h
    high_pass_filter.h
    splitting_filter.cc
    gain_control_impl.cc
    rms_level.h
    ns/signal_model_estimator.h
    ns/histograms.h
    ns/prior_signal_model.cc
    ns/quantile_noise_estimator.cc
    ns/noise_suppressor.cc
    ns/ns_fft.cc
    ns/signal_model.cc
    ns/ns_fft.h
    ns/fast_math.cc
    ns/signal_model_estimator.cc
    ns/prior_signal_model_estimator.cc
    ns/speech_probability_estimator.cc
    ns/fast_math.h
    ns/signal_model.h
    ns/ns_common.h
    ns/quantile_noise_estimator.h
    ns/speech_probability_estimator.h
    ns/suppression_params.cc
    ns/noise_estimator.h
    ns/noise_suppressor.h
    ns/wiener_filter.cc
    ns/noise_estimator.cc
    ns/wiener_filter.h
    ns/prior_signal_model_estimator.h
    ns/suppression_params.h
    ns/histograms.cc
    ns/ns_config.h
    ns/prior_signal_model.h
    residual_echo_detector.h
    capture_levels_adjuster/capture_levels_adjuster.h
    capture_levels_adjuster/audio_samples_scaler.cc
    capture_levels_adjuster/capture_levels_adjuster.cc
    capture_levels_adjuster/audio_samples_scaler.h
    audio_processing_impl.h
    audio_buffer.cc
    render_queue_item_verifier.h
    # aec_dump/capture_stream_info.cc
    # aec_dump/aec_dump_integration_test.cc
    aec_dump/capture_stream_info.h
    aec_dump/null_aec_dump_factory.cc
    aec_dump/aec_dump_factory.h
    aec_dump/aec_dump_impl.h
    # aec_dump/mock_aec_dump.h
    # aec_dump/aec_dump_impl.cc
    # aec_dump/mock_aec_dump.cc
    include/audio_frame_proxies.cc
    include/audio_frame_view.h
    include/mock_audio_processing.h
    include/aec_dump.cc
    include/aec_dump.h
    include/audio_processing_statistics.h
    include/audio_processing.h
    include/audio_frame_proxies.h
    agc2/interpolated_gain_curve.h
    agc2/biquad_filter.h
    agc2/interpolated_gain_curve.cc
    agc2/adaptive_digital_gain_controller.h
    agc2/input_volume_controller.cc
    agc2/agc2_testing_common.h
    agc2/gain_applier.cc
    agc2/speech_level_estimator.h
    agc2/limiter.cc
    agc2/speech_level_estimator.cc
    agc2/saturation_protector.cc
    agc2/vector_float_frame.h
    agc2/clipping_predictor.cc
    agc2/rnn_vad/rnn_gru.h
    agc2/rnn_vad/spectral_features_internal.cc
    agc2/rnn_vad/auto_correlation.cc
    agc2/rnn_vad/sequence_buffer.h
    agc2/rnn_vad/rnn.h
    agc2/rnn_vad/rnn.cc
    agc2/rnn_vad/test_utils.h
    agc2/rnn_vad/rnn_gru.cc
    agc2/rnn_vad/lp_residual.h
    agc2/rnn_vad/ring_buffer.h
    agc2/rnn_vad/pitch_search_internal.cc
    agc2/rnn_vad/rnn_fc.h
    agc2/rnn_vad/symmetric_matrix_buffer.h
    agc2/rnn_vad/spectral_features.h
    agc2/rnn_vad/features_extraction.h
    agc2/rnn_vad/common.h
    agc2/rnn_vad/spectral_features_internal.h
    agc2/rnn_vad/rnn_fc.cc
    agc2/rnn_vad/spectral_features.cc
    agc2/rnn_vad/pitch_search_internal.h
    # agc2/rnn_vad/test_utils.cc
    agc2/rnn_vad/pitch_search.cc
    agc2/rnn_vad/auto_correlation.h
    agc2/rnn_vad/pitch_search.h
    agc2/rnn_vad/vector_math.h
    agc2/rnn_vad/rnn_vad_tool.cc
    agc2/rnn_vad/features_extraction.cc
    # agc2/rnn_vad/vector_math_avx2.cc
    agc2/rnn_vad/lp_residual.cc
    agc2/clipping_predictor_level_buffer.cc
    agc2/input_volume_stats_reporter.h
    agc2/vector_float_frame.cc
    agc2/noise_level_estimator.cc
    agc2/agc2_testing_common.cc
    agc2/vad_wrapper.h
    agc2/fixed_digital_level_estimator.cc
    agc2/input_volume_controller.h
    agc2/speech_probability_buffer.cc
    agc2/saturation_protector.h
    agc2/cpu_features.h
    agc2/limiter_db_gain_curve.cc
    agc2/agc2_common.h
    agc2/limiter_db_gain_curve.h
    agc2/gain_map_internal.h
    agc2/fixed_digital_level_estimator.h
    agc2/vad_wrapper.cc
    agc2/gain_applier.h
    agc2/adaptive_digital_gain_controller.cc
    agc2/clipping_predictor.h
    agc2/speech_probability_buffer.h
    agc2/saturation_protector_buffer.cc
    agc2/noise_level_estimator.h
    agc2/compute_interpolated_gain_curve.cc
    agc2/compute_interpolated_gain_curve.h
    agc2/biquad_filter.cc
    agc2/limiter.h
    agc2/input_volume_stats_reporter.cc
    agc2/saturation_protector_buffer.h
    agc2/clipping_predictor_level_buffer.h
    agc2/cpu_features.cc
    three_band_filter_bank.cc
    audio_processing_builder_impl.cc
    agc/agc.cc
    agc/loudness_histogram.cc
    agc/gain_control.h
    agc/agc_manager_direct.cc
    agc/legacy/analog_agc.h
    agc/legacy/analog_agc.cc
    agc/legacy/gain_control.h
    agc/legacy/digital_agc.h
    agc/legacy/digital_agc.cc
    agc/utility.cc
    agc/mock_agc.h
    agc/loudness_histogram.h
    agc/utility.h
    agc/agc_manager_direct.h
    agc/agc.h
    audio_processing_impl.cc
    audio_buffer.h
    high_pass_filter.cc
    echo_control_mobile_impl.h
    splitting_filter.h
    gain_controller2.cc
    three_band_filter_bank.h
    residual_echo_detector.cc
    gain_controller2.h
    aecm/aecm_core.h
    aecm/aecm_defines.h
    aecm/aecm_core.cc
    aecm/aecm_core_c.cc
    aecm/echo_control_mobile.h
    aecm/echo_control_mobile.cc
    aec3/downsampled_render_buffer.h
    aec3/subtractor_output_analyzer.h
    aec3/dominant_nearend_detector.cc
    aec3/residual_echo_estimator.h
    aec3/transparent_mode.cc
    aec3/echo_remover_metrics.cc
    aec3/matched_filter_lag_aggregator.cc
    aec3/aec_state.h
    aec3/suppression_filter.h
    aec3/echo_path_variability.cc
    aec3/frame_blocker.cc
    aec3/subtractor.cc
    aec3/block_delay_buffer.h
    aec3/adaptive_fir_filter_erl.cc
    aec3/adaptive_fir_filter.h
    aec3/matched_filter.h
    aec3/subtractor_output.h
    aec3/render_signal_analyzer.h
    aec3/BUILD.gn
    aec3/aec3_fft.cc
    aec3/aec3_fft.h
    aec3/echo_remover_metrics.h
    aec3/nearend_detector.h
    aec3/fullband_erle_estimator.cc
    aec3/suppression_filter.cc
    aec3/block_processor.cc
    aec3/filter_analyzer.h
    aec3/subtractor.h
    aec3/echo_path_delay_estimator.h
    aec3/api_call_jitter_metrics.cc
    aec3/subband_erle_estimator.cc
    aec3/render_delay_controller_metrics.cc
    aec3/render_delay_buffer.cc
    aec3/subband_nearend_detector.cc
    aec3/block_processor_metrics.h
    aec3/erl_estimator.cc
    aec3/aec_state.cc
    aec3/adaptive_fir_filter.cc
    aec3/fft_data.h
    aec3/render_delay_controller.cc
    aec3/refined_filter_update_gain.cc
    aec3/adaptive_fir_filter_avx2.cc
    aec3/clockdrift_detector.h
    aec3/render_delay_controller_metrics.h
    aec3/alignment_mixer.h
    aec3/comfort_noise_generator.h
    aec3/spectrum_buffer.h
    aec3/refined_filter_update_gain.h
    aec3/block_buffer.cc
    aec3/echo_path_delay_estimator.cc
    aec3/erl_estimator.h
    # aec3/mock/mock_render_delay_controller.h
    # aec3/mock/mock_echo_remover.cc
    # aec3/mock/mock_render_delay_buffer.h
    # aec3/mock/mock_render_delay_controller.cc
    # aec3/mock/mock_block_processor.h
    # aec3/mock/mock_echo_remover.h
    # aec3/mock/mock_render_delay_buffer.cc
    # aec3/mock/mock_block_processor.cc
    aec3/echo_remover.h
    aec3/block_framer.cc
    aec3/erle_estimator.cc
    aec3/reverb_model.cc
    aec3/render_buffer.cc
    aec3/reverb_model_estimator.h
    aec3/api_call_jitter_metrics.h
    aec3/subtractor_output.cc
    aec3/stationarity_estimator.cc
    aec3/render_signal_analyzer.cc
    aec3/echo_path_variability.h
    aec3/moving_average.h
    aec3/block_buffer.h
    aec3/subtractor_output_analyzer.cc
    aec3/suppression_gain.cc
    aec3/echo_audibility.cc
    aec3/block_processor_metrics.cc
    aec3/render_delay_controller.h
    aec3/suppression_gain.h
    aec3/moving_average.cc
    aec3/erle_estimator.h
    aec3/subband_erle_estimator.h
    aec3/subband_nearend_detector.h
    aec3/reverb_model_estimator.cc
    aec3/fft_data_avx2.cc
    aec3/aec3_common.cc
    aec3/residual_echo_estimator.cc
    aec3/multi_channel_content_detector.cc
    aec3/block_processor.h
    aec3/fullband_erle_estimator.h
    aec3/matched_filter.cc
    aec3/stationarity_estimator.h
    aec3/clockdrift_detector.cc
    aec3/echo_canceller3.h
    aec3/matched_filter_avx2.cc
    aec3/reverb_decay_estimator.cc
    aec3/multi_channel_content_detector.h
    aec3/transparent_mode.h
    aec3/render_buffer.h
    aec3/dominant_nearend_detector.h
    aec3/signal_dependent_erle_estimator.cc
    aec3/echo_remover.cc
    aec3/downsampled_render_buffer.cc
    aec3/block.h
    aec3/config_selector.cc
    aec3/reverb_frequency_response.h
    aec3/adaptive_fir_filter_erl_avx2.cc
    aec3/echo_audibility.h
    aec3/fft_buffer.h
    aec3/spectrum_buffer.cc
    aec3/config_selector.h
    aec3/echo_canceller3.cc
    aec3/block_delay_buffer.cc
    aec3/aec3_common.h
    aec3/fft_buffer.cc
    aec3/vector_math.h
    aec3/signal_dependent_erle_estimator.h
    aec3/decimator.h
    aec3/frame_blocker.h
    aec3/block_framer.h
    aec3/coarse_filter_update_gain.h
    aec3/adaptive_fir_filter_erl.h
    aec3/coarse_filter_update_gain.cc
    aec3/delay_estimate.h
    aec3/comfort_noise_generator.cc
    aec3/reverb_model.h
    aec3/matched_filter_lag_aggregator.h
    aec3/filter_analyzer.cc
    aec3/reverb_decay_estimator.h
    aec3/reverb_frequency_response.cc
    aec3/decimator.cc
    aec3/render_delay_buffer.h
    aec3/alignment_mixer.cc
    echo_control_mobile_impl.cc
    gain_control_impl.h
    logging/apm_data_dumper.cc
    logging/apm_data_dumper.h
    vad/voice_activity_detector.cc
    vad/standalone_vad.cc
    vad/vad_audio_proc_internal.h
    vad/pitch_internal.cc
    vad/vad_circular_buffer.cc
    vad/vad_circular_buffer.h
    vad/pitch_based_vad.h
    vad/vad_audio_proc.cc
    vad/pole_zero_filter.cc
    vad/pole_zero_filter.h
    vad/pitch_based_vad.cc
    vad/gmm.h
    vad/common.h
    vad/vad_audio_proc.h
    vad/voice_gmm_tables.h
    vad/noise_gmm_tables.h
    vad/pitch_internal.h
    vad/gmm.cc
    vad/standalone_vad.h
    vad/voice_activity_detector.h
    utility/cascaded_biquad_filter.h
    utility/pffft_wrapper.h
    utility/delay_estimator_internal.h
    utility/cascaded_biquad_filter.cc
    utility/delay_estimator_wrapper.cc
    utility/pffft_wrapper.cc
    utility/delay_estimator.cc
    utility/delay_estimator.h
    utility/delay_estimator_wrapper.h
    $<TARGET_OBJECTS:api>
    $<TARGET_OBJECTS:rtc_base>
    $<TARGET_OBJECTS:common_audio>
    $<TARGET_OBJECTS:isac_vad>
    $<TARGET_OBJECTS:libfft>
    $<TARGET_OBJECTS:system_wrappers>
    $<TARGET_OBJECTS:pffft>
    $<TARGET_OBJECTS:rnnoise>
)

add_compile_definitions(webrtc_audio_processing PRIVATE
    WEBRTC_APM_DEBUG_DUMP=0)

install(FILES
    "include/audio_processing.h"
    # "include/audio_processing_statistics.h"
    # "include/config.h" # WARNING: This is gone! there must be somewhere else we can get the config structure from
    DESTINATION include/modules/audio_processing/include/
)

if(WIN32)
    target_compile_definitions(webrtc_audio_processing PUBLIC
        WEBRTC_WIN
        _WIN32
        __STDC_FORMAT_MACROS=1
        NOMINMAX
    )
endif()

if(ARCH_X86_64)
    list(APPEND avx2_sources
        "aec3/adaptive_fir_filter_avx2.cc"
        "aec3/adaptive_fir_filter_erl_avx2.cc"
        "aec3/fft_data_avx2.cc"
        "aec3/matched_filter_avx2.cc"
        "aec3/vector_math_avx2.cc"
        "agc2/rnn_vad/vector_math_avx2.cc" # new with upgrade
    )
    target_sources(webrtc_audio_processing PRIVATE ${avx2_sources})
    if(MSVC)
        set_source_files_properties(${avx2_sources} PROPERTIES
            COMPILE_FLAGS "/arch:AVX2")
    else()
        set_source_files_properties(${avx2_sources} PROPERTIES
            COMPILE_FLAGS "-mavx2 -mfma")
    endif()
endif()

# if(ARCH_HAS_NEON)
#     target_sources(webrtc_audio_processing PRIVATE
#         "aecm/aecm_core_neon.cc"
#     )
# endif()

# libwebrtc_audio_processing = library(apm_project_name,
#     webrtc_audio_processing_sources,
#     dependencies: [
#       base_dep,
#       api_dep,
#       isac_vad_dep,
#       system_wrappers_dep,
#       common_audio_dep,
#       pffft_dep,
#       rnnoise_dep,
#     ] + common_deps,
#     link_with: extra_libs,
#     include_directories: webrtc_inc,
#     c_args: common_cflags + apm_flags,
#     cpp_args: common_cxxflags + apm_flags,
#     soversion: apm_minor_version,
#     install: true
# )

target_link_libraries(webrtc_audio_processing
    PUBLIC absl::optional absl::bad_optional_access
)

install(TARGETS webrtc_audio_processing
    EXPORT webrtc-audio-processing-targets
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
