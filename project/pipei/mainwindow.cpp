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
    QAction *bumen_action=menu->addAction("学生信息输入",this,SLOT(slot_stu()));
    bumen_action->setShortcut(QKeySequence((Qt::CTRL + Qt::Key_1)));

    QAction *student_action=menu->addAction("部门信息输入",this,SLOT(slot_bumen()));
    QAction *re_action=menu->addAction("重新生成",this,SLOT(slot_re()));
    student_action->setShortcut(QKeySequence((Qt::CTRL + Qt::Key_2)));
    menu->addSeparator();
    QAction *close_action=menu->addAction("exit",this,SLOT(close()),QKeySequence::Close);
    close_action->setToolTip("exit");


    //设置中心区域widget
    //bumen=new bumen_widget();
    generate=new generate_data;
    this->setCentralWidget(generate);

    connect(generate,SIGNAL(show_shuju()),this,SLOT(slot_showData()));

    //设置托盘图标
     icon=new QSystemTrayIcon();
     icon->setIcon(QIcon("../bing.ico"));
     icon->setToolTip("this is a new SystemTrayIcon");
     icon->setContextMenu(menu);
     icon->show();

     QObject::connect(icon,SIGNAL(activated(QSystemTrayIcon::ActivationReason)),this,
                      SLOT(slot_activated(QSystemTrayIcon::ActivationReason)));
     this->setWindowTitle("生成程序");

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

void MainWindow::slot_re(){
    delete(bumen);
    generate=new generate_data;
    this->setCentralWidget(generate);
    this->setWindowTitle("生成程序");
    connect(generate,SIGNAL(show_shuju()),this,SLOT(slot_showData()));
}

void MainWindow::slot_showData(){

    qDebug()<<"进入了这个槽";
    pMenu->show();
    bumen=new bumen_widget(0,"stu_test");
    this->setCentralWidget(bumen);
    delete(generate);

}

void MainWindow::slot_stu(){
    delete(bumen);
    bumen=new bumen_widget(0,"stu_test");
    this->setCentralWidget(bumen);
    //QString strFile=QFileDialog::getOpenFileName();
    //qDebug()<<"open file is "<<strFile;
}
void MainWindow::slot_bumen(){
     delete(bumen);
    bumen=new bumen_widget();
    this->setCentralWidget(bumen);
    //QString strFile=QFileDialog::getSaveFileName(NULL,"另存为",NULL,"ALL (*.*)");
    //qDebug()<<"save file is "<<strFile;
}

MainWindow::~MainWindow()
{
    delete ui;
}
