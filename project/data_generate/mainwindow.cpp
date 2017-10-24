#include "mainwindow.h"
#include "ui_mainwindow.h"
#include<QMenu>
#include<QMenuBar>
#include<QAction>
#include<QFileDialog>
#include<QDebug>
#include<QToolBar>
#include<QPainter>
#include<QPixmap>
#include<QPoint>
#include<QSystemTrayIcon>
#include<QKeySequence>
#include<QDebug>
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    //设置按钮
    ui->setupUi(this);
    pMenu=menuBar();
    QMenu *menu=pMenu->addMenu("操作");
    pMenu->hide();
    QAction *bumen_action=menu->addAction("学生匹配情况",this,SLOT(slot_stu()));
    bumen_action->setShortcut(QKeySequence((Qt::CTRL + Qt::Key_1)));
    QAction *student_action=menu->addAction("部门匹配情况",this,SLOT(slot_bumen()));
    QAction *re_action=menu->addAction("重新匹配",this,SLOT(slot_re()));
    student_action->setShortcut(QKeySequence((Qt::CTRL + Qt::Key_2)));
    menu->addSeparator();
    QAction *close_action=menu->addAction("exit",this,SLOT(close()),QKeySequence::Close);
    close_action->setToolTip("exit");


    //设置中心区域widget
    //bumen=new bumen_widget();
    p=new pipei;
    this->setCentralWidget(p);
    connect(p,SIGNAL(show_shuju(int,int)),this,SLOT(slot_showData(int,int)));

    //设置托盘图标
     icon=new QSystemTrayIcon();
     icon->setIcon(QIcon("../bing.ico"));
     icon->setToolTip("this is a new SystemTrayIcon");
     icon->setContextMenu(menu);
     icon->show();

     QObject::connect(icon,SIGNAL(activated(QSystemTrayIcon::ActivationReason)),this,
                      SLOT(slot_activated(QSystemTrayIcon::ActivationReason)));

     this->setWindowTitle("匹配程序");
}
void MainWindow::paintEvent(QPaintEvent *event){
}
//处理系统托盘图标菜单
void MainWindow::slot_activated(QSystemTrayIcon::ActivationReason reason){
    if(reason==QSystemTrayIcon::Trigger){
        if(this->isHidden()){
            this->show();
        }else {
            this->hide();
        }
    }

}

void MainWindow::slot_showData(int stu_count,int zongrenshu){

    qDebug()<<"进入了这个槽";
    pMenu->show();
    this->setWindowTitle("总纳新人数"+QString::number(zongrenshu)+",实际接收："+QString::number(stu_count)+"人");
    shuj=new shuju(0,"stu_test");
    this->setCentralWidget(shuj);
    delete(p);

}
void MainWindow::slot_re(){
    delete(shuj);
    this->setWindowTitle("匹配程序");
    p=new pipei;
    this->setCentralWidget(p);
    connect(p,SIGNAL(show_shuju(int,int)),this,SLOT(slot_showData(int,int)));
}


void MainWindow::slot_stu(){
    delete(shuj);
    shuj=new shuju(0,"stu_test");
    this->setCentralWidget(shuj);

}
void MainWindow::slot_bumen(){
     delete(shuj);
    shuj=new shuju();
    this->setCentralWidget(shuj);

}

MainWindow::~MainWindow()
{
    delete ui;
}
