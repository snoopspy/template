QT += gui widgets

include(../foobar.pro)

TARGET = $${FOOBAR_NAME}
TEMPLATE = lib
CONFIG += staticlib
DESTDIR = $${PWD}
