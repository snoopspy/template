# ------------------------------------------------------------------------------
# src/src.mk
# ------------------------------------------------------------------------------

SRC_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
SRC_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(SRC_DIR))

CPPFLAGS += -Wall -g
CPPFLAGS += -I$(SRC_DIR)
LDLIBS   += -lpthread
