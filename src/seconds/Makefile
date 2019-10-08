.PHONY: split
split:
	convert tens.png -crop 8x20 d.png
	for i in $$(seq 0 5); \
	do mv d-$$i.png ../../watchface/00$$(( 71 + $$i )).png; \
	done
