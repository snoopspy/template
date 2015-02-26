QT += core
QT -= gui

include(../../../../google/gtest/gtest.pri)
CONFIG += FOOBAR_BUILD
include(../foobar.pro)

TARGET = $${FOOBAR_NAME}
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $${PWD}
