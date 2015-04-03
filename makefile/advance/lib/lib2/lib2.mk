# ------------------------------------------------------------------------------
# lib/lib2/lib2.mk
# ------------------------------------------------------------------------------

LIB2_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
LIB2_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(LIB2_DIR))

CPPFLAGS += -I$(LIB2_DIR)
LDFLAGS  += -L$(LIB2_DIR)
LDLIBS   += -llib2

include $(LIB2_DIR)/../lib1/lib1.mk
