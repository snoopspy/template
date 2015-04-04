include(../../src/src.pri)

CONFIG -= qt
TEMPLATE = app
DESTDIR = $${PWD}/../../bin

HEADERS += *.h $${SRC_DIR}/*.h

SOURCES += *.cpp \
  $${SRC_DIR}/src1.cpp \
  $${SRC_DIR}/src2.cpp \
  $${SRC_DIR}/src3.cpp
