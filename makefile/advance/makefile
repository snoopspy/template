# ------------------------------------------------------------------------------
# makefile
# ------------------------------------------------------------------------------

_SUBDIRS = lib src test
.PHONY: all debug release build clean depend temp deps_check $(_SUBDIRS)

all: deps_check
	@cd lib  && make release
	@cd src  && make release
	@cd test && make debug
	
debug  : $(_SUBDIRS)
release: $(_SUBDIRS)
build  : $(_SUBDIRS)
clean  : $(_SUBDIRS)
depend : $(_SUBDIRS)
temp   :

deps_check:
	@echo "deps_check"

$(_SUBDIRS):
	@if [ -d $(MAKECMDGOALS) ]; then \
		cd $@ && make ;\
	else \
		cd $@ && make $(MAKECMDGOALS);\
	fi

src: lib
test: src
