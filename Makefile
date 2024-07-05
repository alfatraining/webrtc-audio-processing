WORKFLOW_PRESETS = \
	android-x86_64 \
	android-armeabi-v7a \
	android-arm64-v8a \
	macos-arm64-static \
	macos-x86_64-static \
	ios-arm64-static \
	win64-msvc-static \
	win64-ninja-static \
	linux-clang64-static \
	emscripten

WORKFLOW_PRESETS_DEV = \
	android-x86_64-dev \
	android-armeabi-v7a-dev \
	android-arm64-v8a-dev \
	macos-arm64-static-dev \
	macos-x86_64-static-dev \
	ios-arm64-static-dev \
	win64-msvc-static-dev \
	win64-ninja-static-dev \
	linux-clang64-static-dev \
	emscripten-dev

help:
	@ cmake --list-presets=workflow

$(WORKFLOW_PRESETS):
	@ echo == Erasing build directory build/$@ for a clean configuration and build
	@ rm -rf build/$@
	@ cmake --workflow --preset=$@

$(WORKFLOW_PRESETS_DEV):
	@ echo == Erasing build directory build/$(subst -dev,,$@) for a clean configuration and build
	@ rm -rf build/$(subst -dev,,$@)
	@ cmake --workflow --preset=$@
