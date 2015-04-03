# ------------------------------------------------------------------------------
# lib/lib2/lib2.mk
# ------------------------------------------------------------------------------

MYLIBB_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBB_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBB_DIR))

CPPFLAGS += -I$(MYLIBB_DIR)
LDFLAGS  += -L$(MYLIBB_DIR)
LDLIBS   += -llib2

include $(MYLIBB_DIR)/../lib3/lib3.mk
