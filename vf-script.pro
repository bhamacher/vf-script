#-------------------------------------------------
#
# Project created by QtCreator 2017-06-14T11:18:03
#
#-------------------------------------------------

#dependencies
VEIN_DEP_EVENT = 1
VEIN_DEP_COMP = 1
VEIN_DEP_HELPER = 1
VEIN_DEP_HASH = 1
VEIN_DEP_QML = 1

QT       += qml quick

QT       -= gui

TARGET = vein-script
TEMPLATE = lib

DEFINES += VEINSCRIPT_LIBRARY

SOURCES += \
    vsc_scriptinstance.cpp \
    vsc_scriptsystem.cpp

HEADERS +=\
        vein-script_global.h \
    vsc_scriptinstance.h \
    vsc_scriptsystem.h

public_headers.files = $$HEADERS

unix {
    target.path = /usr/lib
    INSTALLS += target
}


exists( ../../vein-framework.pri ) {
  include(../../vein-framework.pri)
}
