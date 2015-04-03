# ------------------------------------------------------------------------------
# lib/makefile
# ------------------------------------------------------------------------------

_SUBDIRS = libc libb liba
.PHONY: all debug release build clean depend temp $(_SUBDIRS)

all:     $(_SUBDIRS)

debug:   $(_SUBDIRS)

release: $(_SUBDIRS)

build:   $(_SUBDIRS)

clean:   $(_SUBDIRS)

depend:  $(_SUBDIRS)

temp:
	@echo "MAKECMDGOALS="$(MAKECMDGOALS)
	@echo "MAKE="$(MAKE)

$(_SUBDIRS):
	@if [ -d $(MAKECMDGOALS) ]; then \
		cd $@ && $(MAKE) --no-print-directory ;\
	else \
		cd $@ && $(MAKE) $(MAKECMDGOALS) --no-print-directory ;\
	fi
	
# liba: libb # gilgil temp
# libb: libc # gilgil temp
