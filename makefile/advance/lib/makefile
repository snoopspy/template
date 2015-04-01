# ------------------------------------------------------------------------------
# lib/makefile
# ------------------------------------------------------------------------------

_SUB_PROJS = myliba myliba/mylibb myliba/mylibb/mylibc
.PHONY: all debug release build clean temp $(_SUB_PROJS)

export CPPFLAGS += -Wall -g

all    : $(_SUB_PROJS)
debug  : $(_SUB_PROJS)
release: $(_SUB_PROJS)
build  : $(_SUB_PROJS)
clean  : $(_SUB_PROJS)
temp   :
	@echo "MAKECMDGOALS="$(MAKECMDGOALS)

$(_SUB_PROJS):
	cd $@ && make $(MAKECMDGOALS)

myliba: myliba/mylibb
myliba/mylibb: myliba/mylibb/mylibc
