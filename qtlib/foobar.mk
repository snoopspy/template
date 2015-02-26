#
# foobar
#
FOOBAR_PATH := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
CPPFLAGS += -I$(FOOBAR_PATH)/src
LDFLAGS += -L$(FOOBAR_PATH)/lib -lfoobar
