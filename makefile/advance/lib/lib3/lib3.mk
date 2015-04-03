# ------------------------------------------------------------------------------
# lib/lib3/lib3.mk
# ------------------------------------------------------------------------------

LIB3_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
LIB3_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(LIB3_DIR))

CPPFLAGS += -I$(LIB3_DIR)
LDFLAGS  += -L$(LIB3_DIR)
LDLIBS   += -llib3

include $(LIB3_DIR)/../lib2/lib2.mk
