#-------------------------------------------------
#
# Project created by QtCreator 2018-04-08T15:41:58
#
#-------------------------------------------------

TARGET = lunar-ccalendar
TEMPLATE = app
DEPENDPATH += .
INCLUDEPATH += .

inst.files += database/lunar.db
inst.path = /usr/share/lunar-ccalendar/database
inst1.files += img/lunar-ccalendar-64.png
inst1.path = /usr/share/pixmaps
inst2.files += lunar-ccalendar.desktop
inst2.path = /usr/share/applications
inst3.files += lunar-ccalendar-autostart.desktop
inst3.path = /etc/xdg/autostart
inst4.files += lunar-ccalendar-autostart
inst4.path = /usr/bin
target.source += $$TARGET
target.path = /usr/bin
INSTALLS += inst \
    inst1 \
    inst2 \
    inst3 \
    inst4 \
    target

include(qtsingleapplication/src/qtsingleapplication.pri) # add support: single instace application run
QT       += core gui
QT       += sql # add support: sqllite
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        luarccalendar.cpp \
    TCalendar.cpp

HEADERS += \
        luarccalendar.h \
    TCalendar.h \
    lunarccdatetime.h

FORMS += \
        luarccalendar.ui

TRANSLATIONS += \
    translate/i18_zh_CN.qm

RESOURCES += \
    luanrccalendar.qrc

DISTFILES += \
    database/lunar.db


