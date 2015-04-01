# ------------------------------------------------------------------------------
# lib/mylibb/mylibb.mk
# ------------------------------------------------------------------------------

MYLIBB_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBB_PATH := $(subst $(_ABSDIR),$(_RELDIR),$(MYLIBB_PATH))

CPPFLAGS += -I$(MYLIBB_PATH)
LDFLAGS  += -L$(MYLIBB_PATH)
LDLIBS   += -lmylibb

include $(MYLIBB_PATH)/../mylibc/mylibc.mk
