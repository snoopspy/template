include(src.pri)

CONFIG -= qt
TARGET = hello_world
TEMPLATE = app
DESTDIR = $${PWD}/../bin

HEADERS += *.h
SOURCES += *.cpp
