include(lib2.pri)

CONFIG = staticlib
QMAKE_CLEAN += Makefile lib$${TARGET}.a
TEMPLATE = lib

HEADERS += *.h
SOURCES += *.cpp
