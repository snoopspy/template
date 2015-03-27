# ------------------------------------------------------------------------------
# lib/makefile
# ------------------------------------------------------------------------------

_SUBPROJS = foo foo/bar foo/bar/baz
.PHONY: all debug release build clean temp $(_SUBPROJS)

all: foo foo/bar foo/bar/baz
	@echo "lib all"

all    : release
debug  : build
release: build
build  : $(_SUBPROJS)
clean  : $(_SUBPROJS)
temp   : $(_SUBPROJS)

$(_SUBPROJS):
	cd foo/bar/baz && make $(MAKECMDGOALS) && cd../../..
