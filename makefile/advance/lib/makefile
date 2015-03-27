# ------------------------------------------------------------------------------
# lib/makefile
# ------------------------------------------------------------------------------

_SUB_PROJS = myliba myliba/mylibb myliba/mylibb/mylibc
.PHONY: all debug release build clean temp $(_SUB_PROJS)

all    : release
debug  : build
release: build
build  : $(_SUB_PROJS)
clean  : $(_SUB_PROJS)
temp   :
	@echo "MAKECMDGOALS="$(MAKECMDGOALS)

$(_SUB_PROJS):
	cd $@ && make $(MAKECMDGOALS)

myliba: myliba/mylibb
myliba/mylibb: myliba/mylibb/mylibc
