# ------------------------------------------------------------------------------
# makefile
# ------------------------------------------------------------------------------

_SUBDIRS = lib src test
.PHONY: all debug release build clean depend temp $(_SUBDIRS)

#
# targets
#
all:
	@cd lib  && make release && cd ..
	@cd src  && make release && cd ..
	@cd test && make debug   && cd ..
	
debug   : build
release : build
build   : deps_check $(_SUBDIRS)
clean   : $(_SUBDIRS)
temp    : $(_SUBDIRS)

deps_check:
	@echo "deps_check"

$(_SUBDIRS):
	@cd $@ && make $(MAKECMDGOALS) && cd ..
