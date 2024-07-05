add_library(api OBJECT
    "audio/audio_frame.cc"
    "audio/channel_layout.cc"
    "audio/echo_canceller3_config.cc"
    "audio_codecs/audio_decoder.cc"
    "audio_codecs/audio_encoder.cc"
    "rtp_headers.cc"
    "rtp_packet_info.cc"
    "task_queue/task_queue_base.cc"
    "units/data_rate.cc"
    "units/data_size.cc"
    "units/frequency.cc"
    "units/time_delta.cc"
    "units/timestamp.cc"
    "video/color_space.cc"
    "video/hdr_metadata.cc"
    "video/video_content_type.cc"
    "video/video_timing.cc"
)

target_link_libraries(api PRIVATE absl::optional)

install(FILES 
        "array_view.h"
        "scoped_refptr.h"
    DESTINATION include/api
)

install(FILES 
        "audio/echo_canceller3_config.h"
        "audio/echo_control.h"
    DESTINATION include/api/audio
)
