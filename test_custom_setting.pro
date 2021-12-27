QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
DESTDIR = ../bin

SOURCES += \
    src/main.cpp \
    src/main_window.cpp \
    src/app_settings.cpp \
    src/app_setting_manager.cpp

HEADERS += \
    inc/main_window.h \
    inc/app_settings.h \
    inc/app_setting_manager.h

FORMS += \
    forms/main_window.ui

INCLUDEPATH += inc $$PWD/../custom_setting/inc
LIBS *= -L$$OUT_PWD/$$DESTDIR -lcustom_setting

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
