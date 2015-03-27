# ------------------------------------------------------------------------------
# lib/myliba/mylibb/mylibb.mk
# ------------------------------------------------------------------------------

MYLIBB_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBB_PATH := $(subst $(_ABS_PATH),$(_REL_PATH),$(MYLIBB_PATH))

CPPFLAGS += -I$(MYLIBB_PATH)
LDFLAGS  += -L$(MYLIBB_PATH)
LDLIBS   += -lmylibb

include $(MYLIBB_PATH)/mylibc/mylibc.mk
