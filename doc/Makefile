.PHONY: all clean

ADOC_SRCS := $(wildcard *.adoc)
OBJS := $(patsubst %.adoc,%.html,$(ADOC_SRCS))

ifneq ($(shell which asciidoctor),)
	DOC ?= asciidoctor
else
	DOC ?= asciidoc
endif

all: $(OBJS)

clean distclean:
	rm -f $(OBJS)

%.html: %.adoc
	$(DOC) -a icons=font -o $@ $<
