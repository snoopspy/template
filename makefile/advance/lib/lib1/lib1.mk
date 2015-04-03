# ------------------------------------------------------------------------------
# lib/lib1/lib1.mk
# ------------------------------------------------------------------------------

MYLIBA_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBA_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBA_DIR))

CPPFLAGS += -I$(MYLIBA_DIR)
LDFLAGS  += -L$(MYLIBA_DIR)
LDLIBS   += -llib1

include $(MYLIBA_DIR)/../lib2/lib2.mk
