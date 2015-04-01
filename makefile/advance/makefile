# ------------------------------------------------------------------------------
# makefile
# ------------------------------------------------------------------------------

_SUBDIRS = lib src test
.PHONY: all debug release build clean temp depend $(_SUBDIRS)

all: deps_check
	@cd lib  && make release && cd ..
	@cd src  && make release && cd ..
	@cd test && make debug   && cd ..
	
debug  : $(_SUBDIRS)
release: $(_SUBDIRS)
build  : $(_SUBDIRS)
clean  : $(_SUBDIRS)
temp   :
depend : $(_SUBDIRS)

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
