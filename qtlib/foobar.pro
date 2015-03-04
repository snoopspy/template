CONFIG += FOOBAR_BUILD
include(foobar.pri)

TARGET = $${FOOBAR_NAME}
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $${PWD}/lib

SOURCES += \
	$${PWD}/src/foobar/bar.cpp \
	$${PWD}/src/foobar/foo.cpp

HEADERS += \
	$${PWD}/src/foobar/bar.h \
	$${PWD}/src/foobar/foo.h
