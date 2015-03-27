# ------------------------------------------------------------------------------
# lib/myliba/mylibb/mylibc/mylibc.mk
# ------------------------------------------------------------------------------

MYLIBC_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MYLIBC_PATH := $(subst $(_ABS_PATH),$(_REL_PATH),$(MYLIBC_PATH))

CPPFLAGS += -I$(MYLIBC_PATH)
LDFLAGS  += -L$(MYLIBC_PATH)
LDLIBS   += -lmylibc
