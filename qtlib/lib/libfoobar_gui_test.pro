QT += gui widgets

include(../../../../google/gtest/gtest.pri)
include(libfoobar.pri)

TARGET = $$FOOBAR_NAME
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $$PWD
