# ------------------------------------------------------------------------------
# makefile
# ------------------------------------------------------------------------------

_SUBDIRS = lib src test
.PHONY: all debug release build clean depend temp deps_check $(_SUBDIRS)

all: deps_check
	@cd lib  && $(MAKE) release --no-print-directory
	@cd src  && $(MAKE) release --no-print-directory
	@cd test && $(MAKE) debug --no-print-directory
	
debug:   $(_SUBDIRS)

release: $(_SUBDIRS)

build:   $(_SUBDIRS)

clean:   $(_SUBDIRS)

depend:  $(_SUBDIRS)

temp:

deps_check:
	@echo "deps_check"

$(_SUBDIRS):
	@if [ -d $(MAKECMDGOALS) ]; then \
		cd $@ && $(MAKE) --no-print-directory ;\
	else \
		cd $@ && $(MAKE) $(MAKECMDGOALS) --no-print-directory ;\
	fi

src: lib
test: src
