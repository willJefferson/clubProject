#ifndef PIPEI_H
#define PIPEI_H
#include"bumen.h"
#include"stu.h"
#include <QWidget>
#include<QVBoxLayout>
#include<QHBoxLayout>
#include<QPushButton>
class pipei : public QWidget
{
    Q_OBJECT
public:
    QVBoxLayout *vl;
    QHBoxLayout *hl;
    QPushButton *submit;
    QPushButton *shijianduan_submit;
    int numberOfStudent;
    explicit pipei(QWidget *parent = 0);
    int mo;

signals:
    void show_shuju(int stu_count,int zongrenshu);
    void moshi_signal();
public slots:
     void pp();
     void fasong_signal();


};

#endif // PIPEI_H
