#-------------------------------------------------
#
# Project created by QtCreator 2017-10-24T13:47:02
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = pipei_windows
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    pipei.cpp \
    bumen.cpp \
    stu.cpp \
    shuju.cpp

HEADERS  += mainwindow.h \
    pipei.h \
    bumen.h \
    stu.h \
    shuju.h

FORMS    += mainwindow.ui
