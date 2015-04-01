# ------------------------------------------------------------------------------
# lib/makefile
# ------------------------------------------------------------------------------

_SUBDIRS = mylibc mylibb myliba
.PHONY: all debug release build clean temp depend $(_SUBDIRS)

all    : $(_SUBDIRS)
debug  : $(_SUBDIRS)
release: $(_SUBDIRS)
build  : $(_SUBDIRS)
clean  : $(_SUBDIRS)
temp   :
	@echo "MAKECMDGOALS="$(MAKECMDGOALS)

depend : $(_SUBDIRS)

$(_SUBDIRS):
	@if [ -d $(MAKECMDGOALS) ]; then \
		cd $@ && make ;\
	else \
		cd $@ && make $(MAKECMDGOALS);\
	fi
	
# myliba: mylibb # gilgil temp
# mylibb: mylibc # gilgil temp
