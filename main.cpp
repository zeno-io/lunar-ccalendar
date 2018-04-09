// ***************************************************************************
// * LICENSE : GPLv3 (GNU GENERAL PUBLIC LICENSE Version 3)
// * Copyright (C) 2018  Sven Augustus
// * email: svenaugustus@outlook.com
// ***************************************************************************

#include <QApplication>
#include <QtSingleApplication>
#include <QtGui>
#include "luarccalendar.h"

int main(int argc, char *argv[])
{
    // QApplication app(argc, argv);
    // 单程序运行处理
    QtSingleApplication app(argc, argv);
    if (app.isRunning())
        return 0;

#if QT_VERSION < 0x050000
    QTextCodec::setCodecForTr(QTextCodec::codecForName("UTF-8"));
    QTextCodec::setCodecForCStrings(QTextCodec::codecForName("UTF-8"));
#endif

    QTranslator translator;
    translator.load(":/translate/i18_zh_CN.qm");
    app.installTranslator(&translator);

    LuarCCalendar w;
    w.show();

    return app.exec();
}
