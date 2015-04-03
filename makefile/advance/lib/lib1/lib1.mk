# ------------------------------------------------------------------------------
# lib/liba/liba.mk
# ------------------------------------------------------------------------------

MYLIBA_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBA_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBA_DIR))

CPPFLAGS += -I$(MYLIBA_DIR)
LDFLAGS  += -L$(MYLIBA_DIR)
LDLIBS   += -lliba

include $(MYLIBA_DIR)/../libb/libb.mk
