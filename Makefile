WATCHFACE ?= wine ~/opt/AmazfitBipTools/WatchFace.exe

.PHONY: build
build: pack patch
	mkdir -p build
	cp watchface/gelin_packed.bin build/gelin.bin
	cp watchface/gelin_packed_static.png build/gelin.png

.PHONY: pack
pack:
	$(WATCHFACE) watchface/gelin.json

.PHONY: patch
# https://amazfitwatchfaces.com/forum/viewtopic.php?f=14&t=128
# https://stackoverflow.com/questions/4783657/cli-write-byte-at-address-hexedit-modify-binary-from-the-command-line
patch:
	echo '0f00ee0000003960' | xxd -r -p | dd of=watchface/gelin_packed.bin bs=1 seek=16 count=8 conv=notrunc
