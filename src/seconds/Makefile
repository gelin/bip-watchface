.PHONY: split
split: tens ones

.PHONY: tens
tens:
	convert tens.png -crop 8x20 d.png
	for i in $$(seq 0 5); \
	do mv d-$$i.png ../../watchface/00$$(( 71 + $$i )).png; \
	done

.PHONY: ones
ones:
	convert ones.png -crop 8x20 d.png
	for i in $$(seq 0 9); \
	do mv d-$$i.png ../../watchface/00$$(( 77 + $$i )).png; \
	done
