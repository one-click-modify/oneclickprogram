#-------------------------------------------------
#
# Project created by QtCreator 2018-10-20T16:28:48
#
#-------------------------------------------------

QT       += core gui  network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QT_ONECLICk
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
TRANSLATIONS = oneclick.ts

SOURCES += \
    about_us.cpp \
    account_item.cpp \
    change_skin_widget.cpp \
    character_widget.cpp \
    clabel.cpp \
    content_widget.cpp \
    drop_shadow_widget.cpp \
    kill_mummy_widget.cpp \
    loading_widget.cpp \
    login_dialog.cpp \
    main.cpp \
    main_menu.cpp \
    main_widget.cpp \
    msg_box.cpp \
    push_button.cpp \
    register_widget.cpp \
    setting_dialog.cpp \
    shadow_widget.cpp \
    skin_widget.cpp \
    system_tray.cpp \
    title_widget.cpp \
    tool_button.cpp \
    util.cpp

HEADERS += \
    about_us.h \
    account_item.h \
    change_skin_widget.h \
    character_widget.h \
    clabel.h \
    common.h \
    content_widget.h \
    drop_shadow_widget.h \
    kill_mummy_widget.h \
    loading_widget.h \
    login_dialog.h \
    main_menu.h \
    main_widget.h \
    msg_box.h \
    push_button.h \
    register_widget.h \
    resource.h \
    setting_dialog.h \
    shadow_widget.h \
    skin_widget.h \
    system_tray.h \
    title_widget.h \
    tool_button.h \
    util.h

FORMS += \
        mainwindow.ui \

SUBDIRS += \
    QT_360.pro

DISTFILES += \
    QT_360.pro.user \
    readMe.txt

RESOURCES += \
    Resources/360safe.qrc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libthrift/ -llibthrift      -llibthriftnb  -lboost_chrono-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libthrift/ -llibthriftd -llibthriftnbd -lboost_chrono-vc100-mt-1_52d




win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_date_time-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_date_time-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_filesystem-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_filesystem-vc100-mt-1_52d
else:unix: LIBS += -L$$PWD/Lib/libboost/ -lboost_filesystem-vc100-mt-1_52

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_graph-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_graph-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_iostreams-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_iostreams-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_locale-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_locale-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_c99f-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_c99f-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_c99l-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_c99l-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_c99-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_c99-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_tr1f-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_tr1f-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_tr1l-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_tr1l-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_tr1-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_math_tr1-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_prg_exec_monitor-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_prg_exec_monitor-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_program_options-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_program_options-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_random-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_random-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_regex-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_regex-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_serialization-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_serialization-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_signals-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_signals-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_system-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_system-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_thread-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_thread-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_timer-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_timer-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_timer-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_timer-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_unit_test_framework-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_unit_test_framework-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_wave-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_wave-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_wserialization-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_wserialization-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_wserialization-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -lboost_wserialization-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_chrono-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_chrono-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_chrono-vc100-mt-s-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_chrono-vc100-mt-s-1_52d
else:unix: LIBS += -L$$PWD/Lib/libboost/ -llibboost_chrono-vc100-mt-s-1_52

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_date_time-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_date_time-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_date_time-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_date_time-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_exception-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_exception-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_exception-vc100-mt-s-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_exception-vc100-mt-s-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_filesystem-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_filesystem-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_filesystem-vc100-mt-s-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_filesystem-vc100-mt-s-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_graph-vc100-mt-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_graph-vc100-mt-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_graph-vc100-mt-s-1_52
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/Lib/libboost/ -llibboost_graph-vc100-mt-s-1_52d

INCLUDEPATH += $$PWD/Lib/libboost
DEPENDPATH += $$PWD/Lib/libboost
