# ------------------------------------------------------------------------------
# lib/a/b/c/c.mk
# ------------------------------------------------------------------------------

C_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
C_PATH := $(subst $(_ABS_PATH),$(_REL_PATH),$(C_PATH))

CPPFLAGS += -I$(C_PATH)
LDFLAGS  += -L$(C_PATH)
#LDLIBS   += -lc
