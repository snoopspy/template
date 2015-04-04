include(../../src/src.pri)

CONFIG -= qt
DESTDIR = $${PWD}/../../bin
TEMPLATE = app
QMAKE_CLEAN += Makefile $${DESTDIR}/$${TARGET}

HEADERS += *.h $${SRC_DIR}/*.h

SOURCES += *.cpp \
  $${SRC_DIR}/src1.cpp \
  $${SRC_DIR}/src2.cpp \
  $${SRC_DIR}/src3.cpp
