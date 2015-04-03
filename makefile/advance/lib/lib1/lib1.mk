# ------------------------------------------------------------------------------
# lib/lib1/lib1.mk
# ------------------------------------------------------------------------------

LIB1_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
LIB1_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(LIB1_DIR))

CPPFLAGS += -I$(LIB1_DIR)
LDFLAGS  += -L$(LIB1_DIR)
LDLIBS   += -llib1
