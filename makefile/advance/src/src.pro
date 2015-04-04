include(src.pri)

CONFIG -= qt
TARGET = hello_world
TEMPLATE = app
DESTDIR = $${PWD}/../bin
QMAKE_CLEAN += Makefile $${DESTDIR}/$${TARGET}

HEADERS += *.h
SOURCES += *.cpp
