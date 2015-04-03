# ------------------------------------------------------------------------------
# lib/libb/libb.mk
# ------------------------------------------------------------------------------

MYLIBB_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBB_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBB_DIR))

CPPFLAGS += -I$(MYLIBB_DIR)
LDFLAGS  += -L$(MYLIBB_DIR)
LDLIBS   += -llibb

include $(MYLIBB_DIR)/../libc/libc.mk
