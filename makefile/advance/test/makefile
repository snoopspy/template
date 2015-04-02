# ------------------------------------------------------------------------------
# test/makefile
# ------------------------------------------------------------------------------

_SUBDIRS := $(shell ls -d */)
_SUBDIRS := $(_SUBDIRS:%/=%)
.PHONY: all debug release build clean depend temp $(_SUBDIRS)

all:     $(_SUBDIRS)

debug:   $(_SUBDIRS)

release: $(_SUBDIRS)

build:   $(_SUBDIRS)

clean:   $(_SUBDIRS)

depend:   $(_SUBDIRS)

temp:
	@echo "_SUBDIRS="$(_SUBDIRS)

$(_SUBDIRS):
	@if [ -d $(MAKECMDGOALS) ]; then \
		$(MAKE) -f _makefile _SUBDIR=$@ --no-print-directory ;\
	else \
		 $(MAKE) $(MAKECMDGOALS) -f _makefile _SUBDIR=$@ --no-print-directory ;\
	fi
