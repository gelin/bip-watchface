WATCHFACE ?= wine ~/opt/AmazfitBipTools/WatchFace.exe

.PHONY: build
build:
	$(WATCHFACE) watchface/gelin.json
