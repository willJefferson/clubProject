#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include"pipei.h"
#include"shuju.h"
#include <QMainWindow>
#include<QWidget>
#include<QSystemTrayIcon>
#include<QMenuBar>
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    pipei *p;
    shuju *shuj;
    explicit MainWindow(QWidget *parent = 0);
    QWidget *view;
    QSystemTrayIcon *icon;
    void paintEvent(QPaintEvent *event);
    QMenuBar *pMenu;
    ~MainWindow();

private:
    Ui::MainWindow *ui;
public slots:
    void slot_showData(int stu_count,int zongrenshu);
    void slot_bumen();
    void slot_stu();
    void slot_re();
    void slot_activated(QSystemTrayIcon::ActivationReason);
};

#endif // MAINWINDOW_H
