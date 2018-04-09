// ***************************************************************************
// * LICENSE : GPLv3 (GNU GENERAL PUBLIC LICENSE Version 3)
// * Copyright (C) 2018  Sven Augustus
// * email: svenaugustus@outlook.com
// ***************************************************************************

#include "luarccalendar.h"

LuarCCalendar::LuarCCalendar(QWidget *parent) :
    QWidget(parent)//,
    //ui(new Ui::LuarCCalendar)
{
    //ui->setupUi(this);
    setupUi(this);
    ui_fix_width = 115;
    icon = QIcon(":/img/icon.png");
    icon64 = QIcon(":/img/chinesecalendar-64.png");

    setTime();

    QTimer *timer = new QTimer(this);
    timer->setInterval(1000);
    connect(timer,SIGNAL(timeout()),this,SLOT(setTime()));
    timer->start();

    mycalendar=new MyCTCalendar;
    mycalendar->InitConnection(QDir::currentPath()+"/database");   // sqlite
    data.clear();
    today();

    this->trayIcon = new QSystemTrayIcon(this);
    this->trayIcon->setIcon(icon);
    connect(this->trayIcon, SIGNAL(activated(QSystemTrayIcon::ActivationReason)), this, SLOT(trayIconCLicked(QSystemTrayIcon::ActivationReason)));
    this->trayIcon->show();
}

LuarCCalendar::~LuarCCalendar()
{
    delete mycalendar;
    //delete ui;
}

//***************************************************************************
// *函数：void loadCalendar()
// *功能：在 ccalendar 中插入日期数据
// *参数：
// *返回值：
// ***************************************************************************/
void LuarCCalendar::loadCalendar()
{
    data.clear();

    struct CTCalendar c;
    ccalendar->clear();
    ccalendar->setRowCount(2);
    ccalendar->setColumnCount(7);
    ccalendar->horizontalHeader()->hide();
    ccalendar->verticalHeader()->hide();

    qDebug()<<"loadCalendar,width:"<<width();
    for(int i=0;i<7;i++)
        ccalendar->setColumnWidth(i,(width()- ui_fix_width)/7);

    QDate date(selectedDate.year(), selectedDate.month(), 1);
    qDebug()<<"loadCalendar,year:"<<selectedDate.year()<<",month:"<<selectedDate.month();

    //写入星期
    for (int weekDay = 1; weekDay <= 7; ++weekDay) {
        ccalendar->setItem(0,weekDay-1,new QTableWidgetItem(QDate::shortDayName(weekDay)));
        if(weekDay<=5)
            ccalendar->item(0,weekDay-1)->setBackgroundColor(Qt::cyan);
        else
            ccalendar->item(0,weekDay-1)->setBackgroundColor(Qt::red);
    }
    //加入日期
     while (date.month() == selectedDate.month()) {
           int weekDay = date.dayOfWeek();
           mycalendar->ctcl_solar_to_lunar(selectedDate.year(),selectedDate.month(),date.day(),&c);//获取农历信息
           QString mycday;
           mycday=c.cday;
          if(c.sterm.at(0) >=QChar('0') && c.sterm.at(0) <= QChar('9'))
            mycday=c.cday;
          else
          {
              if(c.laststerm)
                  mycday=c.cday;
              else
                  mycday=c.sterm;
          }
          QTableWidgetItem* item=new QTableWidgetItem(QString("%1\n%2").arg(date.day()).arg(mycday));
          ccalendar->setItem(ccalendar->rowCount()-1, weekDay-1 , item);

          QString CuText0=c.ganzhi+tr("year(")+c.shengxiao+")";// 农历年
          QString CuText1=c.cmonth+c.cday; // 农历日期
          QString CuText2=QString::number(selectedDate.year())+"-"
                  +QString::number(selectedDate.month())+"-"
                  +QString::number(date.day());
          QString zodiac=c.zodiac; // 星座
          QString holiday=c.holiday; // 节假日
          QString choliday=c.choliday; // 节假日

          QString CuText=tr("NongLi year");
          CuText.append(CuText0);
          CuText.append("\n"+tr("NongLi Day:")+CuText1);
          CuText.append("\n"+tr("today constellation:")+zodiac);
          CuText.append("\n"+tr("forthcoming sterm:")+c.sterm);
                  if(!c.holiday.isNull())
                    CuText.append("\n"+tr("holiday:")+c.holiday);
                  if(!c.choliday.isNull())
                    CuText.append("\n"+tr("choliday:")+c.choliday);

          item->setToolTip(CuText);
          QString key=QString::number(item->row())+QString::number(item->column());
          data[key] = LunarCCDateTime(CuText2, QString::number(date.day()),CuText0,CuText1,zodiac,holiday,choliday);

          date = date.addDays(1);
          if (weekDay == 7 && date.month() == selectedDate.month())
                ccalendar-> insertRow(ccalendar-> rowCount());
     }
     QDate  today = QDate::currentDate();
     if(today.year() == selectedDate.year() && today.month() == selectedDate.month())
     {
         QDate curMonth = QDate(selectedDate.year(),selectedDate.month(),1);
         int week = curMonth.dayOfWeek();
         // qDebug()<<"week:"<< week;
         int curweek = today.dayOfWeek();
         int  curday = today.day();
         int x = ( curday+(1-week)*(-1))  % 7;
         int y =( curday+(1-week)*(-1)) /7 ;
         if( x != 0)
             y=y+1;
        QTableWidgetItem* currentItem=ccalendar-> item(y,curweek-1);
        currentItem-> setBackgroundColor(Qt::red);

        showDayInfo(currentItem);

        // QString toolTip = currentItem->toolTip();
        // systemtray->setToolTip(toolTip);
     }
     ccalendar->resizeRowsToContents();
     connect(ccalendar,SIGNAL(itemClicked(QTableWidgetItem*)),this,SLOT(showDayInfo(QTableWidgetItem*)));
}

//***************************************************************************
// *函数：void showDayInfo()
// *功能：设置日期信息
// *参数： item
// *返回值：
// ***************************************************************************/
void LuarCCalendar::showDayInfo(QTableWidgetItem* item)
{

   QString key=QString::number(item->row())+QString::number(item->column());
   if(data.contains(key))
   {
     LunarCCDateTime dateytime = data.value(key);
     label_dayFull->setText(dateytime.getDayFull());
     label_day->setText(dateytime.getDay());
     label_noliday->setText(tr("NongLi") + dateytime.getNoliDay());
     label_noliyear->setText(dateytime.getNoliYear());
     label_constellation->setText(dateytime.getConstellation());

     QString holidays = dateytime.getHoliday();
     if(!dateytime.getCholiday().isNull())holidays.append("\n"+dateytime.getCholiday());
     label_holidays->setText(holidays);
   }
}

//***************************************************************************
// *函数：void today();
// *功能：设置今天
// *参数：
// *返回值：
// ***************************************************************************/
void LuarCCalendar::today(){
    selectedDate = QDate::currentDate();

    setYear(selectedDate.year());
    setMonth(selectedDate.month() - 1);

    loadCalendar();
}

//***************************************************************************
// *函数：void setTime()
// *功能：设置当前时间
// *参数：
// *返回值：
// ***************************************************************************/
void LuarCCalendar::setTime()
{
    QDateTime dateTime = QDateTime::currentDateTime();
    label_time->setText(dateTime.toString("hh:mm:ss"));
}

//***************************************************************************
// *函数：void setYear(int yearIndex)
// *功能：设置年
// *参数：int yearIndex
// *返回值：
// ***************************************************************************/
void LuarCCalendar::setYear(int yearIndex)
{
    selectedDate = QDate(yearIndex, selectedDate.month(), selectedDate.day());
    t_yearIndex = yearIndex;
    label_year->setText(QString::number(t_yearIndex)); // change the text.
}

//***************************************************************************
// *函数：void setMonth(int monthIndex);
// *功能：设置月
// *参数：int monthIndex
// *返回值：
// ***************************************************************************/
void LuarCCalendar::setMonth(int monthIndex)
{
    if(monthIndex < 0)
    {
        monthIndex = 0;
    }
    if(monthIndex > 11)
    {
        monthIndex = 11;
    }
    int day=0;
    int month = monthIndex + 1;
    //qDebug()<<"month:"<<month;
    if(month ==1 || month ==3 || month == 5 || month == 7 || month  == 8 || month == 10 || month ==12)
    {
        day =31;
    }
    else if(month ==4 || month==6 || month ==9 || month ==11)
    {
       day =30;
    }
    if(selectedDate.year()%4 ==0 && selectedDate.year()%100!=0)
    {
            day = 29;
    }
    else if(selectedDate.year()%400 ==0)
    {
            day = 29;
    }
    else
    {
            day = 28;
    }
    selectedDate = QDate(selectedDate.year(), month, day);
    t_monthIndex = monthIndex;
    //label_month->setText(QDate::shortMonthName(t_monthIndex + 1));
    label_month->setText(QString::number(t_monthIndex + 1));// change the text.
}

//***************************************************************************
// *函数：void trayIconCLicked(QSystemTrayIcon::ActivationReason reason);
// *功能：系统图标点击事件
// *参数：QSystemTrayIcon::ActivationReason reason
// *返回值：
// ***************************************************************************/
void LuarCCalendar::trayIconCLicked(QSystemTrayIcon::ActivationReason reason)
{
    switch(reason)
    {
        case QSystemTrayIcon::Trigger:
            if(this->isHidden())
            {
                this->show();
            }else
            {
                this->hide();
            }
            break;
        default:
            ;
    }
}

void LuarCCalendar::on_pushButton_preYear_clicked()
{
   //qDebug()<<"on_pushButton_preYear_clicked";
   if(t_monthIndex == 0 )
    {
        t_monthIndex = 11;
        setMonth(t_monthIndex);
    }
    setYear(t_yearIndex - 1);

    loadCalendar();
}

void LuarCCalendar::on_pushButton_nextYear_clicked()
{
    //qDebug()<<"on_pushButton_nextYear_clicked";
    if(t_monthIndex==11)
    {
         t_monthIndex = 0;
         setMonth(t_monthIndex);
    }
    setYear(t_yearIndex + 1);

    loadCalendar();
}

void LuarCCalendar::on_pushButton_preMonth_clicked()
{
    //qDebug()<<"on_pushButton_preMonth_clicked";
    setMonth(t_monthIndex - 1);

    loadCalendar();
}

void LuarCCalendar::on_pushButton_nextMonth_clicked()
{
    //qDebug()<<"on_pushButton_nextMonth_clicked";
    setMonth(t_monthIndex + 1);

    loadCalendar();
}


void LuarCCalendar:: on_pushButton_today_clicked(){
    //qDebug()<<"on_pushButton_today_clicked";
    today();
}
