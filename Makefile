
WF_PRESETS = $(shell cmake --list-presets=workflow | grep -E \".*\" | tr -d '\"' | tr -d ' ' | tr '\n' ' ')

help:
	@ cmake --list-presets=workflow

$(WF_PRESETS):
	@ echo "== Erasing build directory build/$(subst -dev,,$@) for a clean configuration and build"
	@ rm -rf build/$(subst -dev,,$@)
	@ cmake --workflow --preset=$@ --fresh
