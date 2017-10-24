#-------------------------------------------------
#
# Project created by QtCreator 2017-10-22T11:27:59
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Input_bumen_window
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    bumen_widget.cpp \
    generate_data.cpp

HEADERS  += mainwindow.h \
    bumen_widget.h \
    generate_data.h

FORMS    += mainwindow.ui
