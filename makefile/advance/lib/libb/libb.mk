# ------------------------------------------------------------------------------
# lib/mylibb/mylibb.mk
# ------------------------------------------------------------------------------

MYLIBB_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBB_DIR := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBB_DIR))

CPPFLAGS += -I$(MYLIBB_DIR)
LDFLAGS  += -L$(MYLIBB_DIR)
LDLIBS   += -lmylibb

include $(MYLIBB_DIR)/../mylibc/mylibc.mk
