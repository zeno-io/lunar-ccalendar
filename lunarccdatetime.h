// ***************************************************************************
// * LICENSE : GPLv3 (GNU GENERAL PUBLIC LICENSE Version 3)
// * Copyright (C) 2018  Sven Augustus
// * email: svenaugustus@outlook.com
// ***************************************************************************

#ifndef LUNARCCDATETIME_H
#define LUNARCCDATETIME_H

#include <QString>

class LunarCCDateTime
{
public:
    LunarCCDateTime() {}
    LunarCCDateTime( const QString& t_dayFull,
                     const QString& t_day,
                     const QString& t_noliYear ,
                     const QString& t_noliDay,
                     const QString& t_constellation,
                     const QString& t_holiday,
                     const QString& t_choliday)
            : dayFull(t_dayFull),
              day(t_day),
              noliYear(t_noliYear) ,
              noliDay (t_noliDay),
              constellation (t_constellation),
              holiday (t_holiday),
              choliday (t_choliday)
        { }
    ~LunarCCDateTime(){}
    QString getDayFull() const { return dayFull; }
    QString getDay()const { return day; }
    QString getNoliYear()const { return noliYear; }
    QString getNoliDay()const { return noliDay; }
    QString getConstellation()const { return constellation; }
    QString getHoliday()const { return holiday; }
    QString getCholiday()const { return choliday; }

    void setDayFull (QString t_dayFull) { dayFull=t_dayFull; }
    void setDay(QString  t_day) { day=t_day; }
    void setNoliYear(QString t_noliYear) { noliYear=t_noliYear; }
    void setNoliDay(QString t_noliDay) { noliDay=t_noliDay; }
    void setConstellation(QString t_constellation) { constellation=t_constellation; }
    void setHoliday(QString t_holiday) { holiday=t_holiday; }
    void setCholiday(QString t_choliday) { choliday=t_choliday; }

private:
    //int row;
    //int column;
    QString dayFull;
    QString day;
    QString noliYear;
    QString noliDay;
    QString constellation;
    QString holiday;
    QString choliday;
};

#endif // LUNARCCDATETIME_H
