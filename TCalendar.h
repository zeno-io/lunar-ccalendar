// ***************************************************************************
// * LICENSE : GPLv3 (GNU GENERAL PUBLIC LICENSE Version 3)
// * Copyright (C) 2018  Sven Augustus
// * email: svenaugustus@outlook.com
// ***************************************************************************

// ***************************************************************************
// *	本代码参考了中国中国农历函数库
// *	版权所有 (C) 2005-2006 孙高勇
// *  Mail:sungaoyong@gmail.com
// ***************************************************************************

//***************************************************************************
// * 中国农历函数库 (Chinese Tradional Calendar Library)
// *
// * 版权所有 (C) 2002-2003 汪洋
// * 版权所有 (C) 2003      donaldzju@zju.edu.cn
// * 程序源代码中做出相应说明的代码段版权规其作者所有。
// * 
// * 详细版权声明请参看COPYRIGHT和GPL
// ***************************************************************************
#pragma once
#include<math.h>
#include <QByteArray>
#include <QFile>
#include <QString>
#include <QObject>
#ifndef M_PI
#define M_PI 3.14159265358979323846264338327
#endif

	struct CTCalendar{
	int month;                  /*  农历月：无数据为0，闰月为负，如-3表示闰三月  */
	int day;                    /*  农历日                                  */
	int gan;                    /*  天干                                   */
	int zhi;                    /*  地支                                    */
	QString cmonth;             /*  农历月                                  */
	QString cday;               /*  农历日                                  */
	QString ganzhi;             /*  干支                                    */
	QString shengxiao;          /*  生肖                                    */
	QString sterm;              /*  节气                                    */
	QString caltype;            /*  公历类型：-1表示不存在                    */
	QString weekday;            /*  星期几                                  */
	QString zodiac;             /*  星座                                    */
        QString holiday;            /*  公历节日                                 */
        QString choliday;           /*  农历节日                                 */
    bool laststerm;
	};

class MyCTCalendar: public QObject
{

public:


	MyCTCalendar(void);
	~MyCTCalendar(void);
	int ctcl_solar_to_lunar(int y,int m,int d,struct CTCalendar* ctc);
        bool InitConnection(QString Path);

private:
	int ctcl_calendar_type(int y, int m, int d, int opt);/*  判断Gregorian(格里)历还是Julian(儒略)历  */
	int ctcl_date_to_days(int y,int m,int d);/*  返回y年m月d日在y年年内走过的天数  */
	int ctcl_days_to_date(int y,int x);/*  返回阳历y年日差天数为x时所对应的月日数  */
	int days_from_era(int y);/*  返回y年的年差天数  */
	int ctcl_standard_days(int y,int m,int d);/*  返回等效标准天数  */
	double ctcl_julian_day(int y,int m,int d,int h,int min,int sec,int zone);/*  返回儒略日  */
	int ctcl_day_of_week(int y,int m,int d);/*  返回y年m月d日的星期值，0为星期日  */
	double ctcl_solar_term(int y,int n,int t);/*  返回y年第n个节气（小寒为1）的日差天数,t取值为0或1,分别表示平气和定气  */
	double ctcl_tail(double x);/*  求x的小数部分  */
	double ctcl_rem(double x,double w);/*  广义求余  */
	double ctcl_round(double x);
	int ctcl_gan(int x);/*  返回甲子数x对应的天干数（如33为3）  */
	int ctcl_zhi(int x);/*  返回甲子数x对应的地支数（如33为9）  */
	int ctcl_year_ganzhi(int y,int m,int d,int h);/*  返回y年m月d日h时的年干支数（1-60）  */
	double ang(double x,double t,double c1,double t0,double t2,double t3);
	int ctcl_lunar_date(int y,int m,int d);
	int ctcl_leap_month(int y);/*  返回y年的闰月，无闰返回0  */
	int ctcl_lunar_month(int y,int m,int d);/*  返回y年m月d日对应的农历月份，闰月用负数表示  */
	QByteArray lunarstr;
        int maxyear;
        void logSqlError( const QString& Type, const QString& error);
        QString ctcl_common_query(QString type,QString querystr);
};
