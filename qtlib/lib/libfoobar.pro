QT -= gui

include(libfoobar.pri)

TARGET = $$FOOBAR_NAME
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $$PWD
