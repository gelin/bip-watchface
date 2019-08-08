WATCHFACE ?= wine ~/opt/AmazfitBipTools/WatchFace.exe
NAME ?= gelin-2019

.PHONY: build
build: pack patch
	mkdir -p build
	cp watchface/$(NAME)_packed.bin build/$(NAME).bin
	cp watchface/$(NAME)_packed_static.png build/$(NAME).png

.PHONY: pack
pack:
	$(WATCHFACE) watchface/$(NAME).json

.PHONY: patch
# https://amazfitwatchfaces.com/forum/viewtopic.php?f=14&t=128
# https://stackoverflow.com/questions/4783657/cli-write-byte-at-address-hexedit-modify-binary-from-the-command-line
patch:
	echo '0f00ee0000003960' | xxd -r -p | dd of=watchface/$(NAME)_packed.bin bs=1 seek=16 count=8 conv=notrunc

.PHONY: copy-to-dropbox
copy-to-dropbox:
	cp build/$(NAME).* ~/Dropbox/tmp/bip/
