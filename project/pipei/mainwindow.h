#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include"bumen_widget.h"
#include"generate_data.h"
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
    bumen_widget *bumen;
    generate_data *generate;
    explicit MainWindow(QWidget *parent = 0);
    QWidget *view;
    QSystemTrayIcon *icon;
    void paintEvent(QPaintEvent *event);
    QMenuBar *pMenu;
    ~MainWindow();

private:
    Ui::MainWindow *ui;
public slots:
    void slot_showData();
    void slot_bumen();
    void slot_stu();
    void slot_re();
    void slot_activated(QSystemTrayIcon::ActivationReason);
};

#endif // MAINWINDOW_H
