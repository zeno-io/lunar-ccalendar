// ***************************************************************************
// * LICENSE : GPLv3 (GNU GENERAL PUBLIC LICENSE Version 3)
// * Copyright (C) 2018  Sven Augustus
// * email: svenaugustus@outlook.com
// ***************************************************************************

#ifndef LUARCCALENDAR_H
#define LUARCCALENDAR_H

#include <QWidget>
#include <QDate>
#include <QMap>
#include <QString>
#include <QtGui>
#include <QtWidgets/QTableWidgetItem>
#include "ui_luarccalendar.h"
#include "TCalendar.h"
#include "lunarccdatetime.h"
#include <QSystemTrayIcon>

namespace Ui {
class LuarCCalendar;
}

class LuarCCalendar : public QWidget, private Ui::LuarCCalendar
{
    Q_OBJECT

public:
    explicit LuarCCalendar(QWidget *parent = 0);
    ~LuarCCalendar();

private:
    //Ui::LuarCCalendar *ui;
    int ui_fix_width;
    QIcon icon, icon64;
    QSystemTrayIcon *trayIcon;

    QDate selectedDate;
    MyCTCalendar *mycalendar;
    int t_yearIndex;
    int t_monthIndex;
    QMap<QString, LunarCCDateTime> data;
    void loadCalendar();

public slots:
    void showDayInfo(QTableWidgetItem* item);
    void today();
    void setTime();
    void setYear(int yearIndex);
    void setMonth(int monthIndex);
    void trayIconCLicked(QSystemTrayIcon::ActivationReason reason);

private slots:
    void on_pushButton_preYear_clicked();
    void on_pushButton_nextYear_clicked();
    void on_pushButton_preMonth_clicked();
    void on_pushButton_nextMonth_clicked();
    void on_pushButton_today_clicked();
};

#endif // LUARCCALENDAR_H
