#-------------------------------------------------
#
# Project created by QtCreator 2011-12-04T20:54:34
#
#-------------------------------------------------

QT       += network

TARGET = SessionWrapper
TEMPLATE = lib
CONFIG += sharedlib

DESTDIR = /lib
DLLDESTDIR = /bin

SOURCES += sessionwrapper.cpp

HEADERS += sessionwrapper.h
unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../communi/lib/ -lCommuni
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../communi/lib/ -lCommunid
else:symbian: LIBS += -lCommuni
else:unix: LIBS += -L$$PWD/../communi/lib/ -lCommuni

INCLUDEPATH += $$PWD/../communi/include
DEPENDPATH += $$PWD/../communi/include
DEFINES += COMMUNI_SHARED
