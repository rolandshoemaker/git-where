BINS=/usr/local/bin
WRAPPER=git-where

all:
	@echo "usage: make [install|uninstall]"

install:
	install -d -m 0755 $(BINS)
	install -m 0755 $(WRAPPER) $(BINS)

uninstall:
	test -d $(BINS) && \
	cd $(BINS) && \
	rm -f $(WRAPPER)
