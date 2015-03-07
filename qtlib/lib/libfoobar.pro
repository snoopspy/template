QT -= gui

include(../foobar.pro)

TARGET = $${FOOBAR_NAME}
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $${PWD}
