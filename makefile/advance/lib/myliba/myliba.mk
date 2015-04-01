# ------------------------------------------------------------------------------
# lib/myliba/myliba.mk
# ------------------------------------------------------------------------------

MYLIBA_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBA_PATH := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBA_PATH))

CPPFLAGS += -I$(MYLIBA_PATH)
LDFLAGS  += -L$(MYLIBA_PATH)
LDLIBS   += -lmyliba

include $(MYLIBA_PATH)/../mylibb/mylibb.mk
