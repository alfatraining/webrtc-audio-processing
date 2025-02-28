## 2024-10-24

Package has now a different build system and different focus. It can statically build for a combination of different platforms.

The build system was changed to [CMake]. CMake presets are used heavily to build for the supported platforms.

Release 0.3
-----------

Minor build fixes.


Release 0.2
-----------

Updated AudioProcessing code to be more current.

Contains API breaking changes.

Upstream changes include:

  * Rewritten AGC and voice activity detection
  * Intelligibility enhancer
  * Extended AEC filter
  * Beamformer
  * Transient suppressor
  * ARM, NEON and MIPS optimisations (MIPS optimisations are not hooked up)

API changes:

  * We no longer include a top-level audio_processing.h. The webrtc tree format
    is used, so use webrtc/modules/audio_processing/include/audio_processing.h
  * The top-level module_common_types.h has also been moved to
    webrtc/modules/interface/module_common_types.h
  * C++11 support is now required while compiling client code
  * AudioProcessing::Create() does not take any arguments any more
  * AudioProcessing::Destroy() is gone, use standard C++ "delete" instead
  * Stream parameters are now configured via StreamConfig and ProcessingConfig
    rather than set_sample_rate(), set_num_channels(), etc.
  * AudioFrame field names have changed
  * Use config API for newer audio processing options
  * Use ProcessReverseStream() instead of AnalyzeReverseStream(), particularly
    when using the intelligibility enhancer
  * GainControl::set_analog_level_limits() is broken. The AGC implementation
    hard codes 0-255 as the volume range

Other notes:

  * The new audio processing parameters are not all tested, and a few are not
    enabled upstream (in Chromium) either
  * The rewritten AGC appears to be less sensitive, and it might make sense to
    initialise the capture volume to something reasonable (33% or 50%, for
    example) to make sure there is sufficient energy in the stream to trigger
    the AGC mechanism


Release 0.1
-----------

Initial release, consisting of the WebRTC AudioProcessing module with a
distributor-friendly build system.

[CMake]: https://cmake.org
