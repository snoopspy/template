# ------------------------------------------------------------------------------
# makefile
# ------------------------------------------------------------------------------

_SUB_PROJS = lib src test
.PHONY: all debug release build clean temp $(_SUB_PROJS)

#
# targets
#
all:
	@cd lib  && make release && cd ..
	@cd src  && make release && cd ..
	@cd test && make debug   && cd ..
	
debug   : build
release : build
build   : deps_check $(_SUB_PROJS)
clean   : $(_SUB_PROJS)
temp    : $(_SUB_PROJS)

deps_check:
	@echo "deps_check"

$(_SUB_PROJS):
	@cd $@ && make $(MAKECMDGOALS) && cd ..
