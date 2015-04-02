# ------------------------------------------------------------------------------
# lib/makefile
# ------------------------------------------------------------------------------

_SUBDIRS = mylibc mylibb myliba
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
	
# myliba: mylibb # gilgil temp
# mylibb: mylibc # gilgil temp
