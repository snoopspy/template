# ------------------------------------------------------------------------------
# lib/lib3/lib3.mk
# ------------------------------------------------------------------------------

MYLIBC_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBC_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBC_DIR))

CPPFLAGS += -I$(MYLIBC_DIR)
LDFLAGS  += -L$(MYLIBC_DIR)
LDLIBS   += -llib3
