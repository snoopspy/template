QT -= gui

include(../../../../google/gtest/gtest.pri)
include(../foobar.pro)

TARGET = $${FOOBAR_NAME}
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $${PWD}
