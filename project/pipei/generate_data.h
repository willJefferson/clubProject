#ifndef GENERATE_DATA_H
#define GENERATE_DATA_H

#include <QWidget>
#include<QJsonObject>
#include<QString>
#include<QVector>
#include<QVBoxLayout>
#include<QHBoxLayout>
#include<QPushButton>
class generate_data : public QWidget
{
    Q_OBJECT
public:
    explicit generate_data(QWidget *parent = 0);

    QVBoxLayout *vl;
    QHBoxLayout *hl;
    QPushButton *submit;

    int naxin_renshu,huodong_cishu,suiji_huodong_index,biaoqian_geshu,
        suiji_biaoqian_index,zhiyuan_shu,suiji_zhiyuan_index;
    QString suiji_biaoqian_temp,suiji_huodong_temp,suiji_zhiyuan_temp;
    QJsonObject bumen_instance,stu_instance;
    double jidian;
    QVector<QString> biaoqians={"sing","computer","dance","swim","write","paint","read"
                          ,"ride","cook","basketball"};
    QString weekdays[7]={"Mon","Tue","Wen","Thu","Fri","Sat","Sun"};
    //给出起始时间
    QString times[5]={"8:20-10:00","10:20-12:00","14:00-15:40","16:00-17:40","19:00-21:00"};
    QVector<QString> bumen_mingcheng={"D1","D2","D3","D4","D5","D6","D7","D8","D9","D10",
                                     "D11","D12","D13","D14","D15","D16","D17","D18","D19","D20"};
    QVector<QString> shijianduan_zong;


signals:
    void show_shuju();

public slots:
    void shengcheng();
};

#endif // GENERATE_DATA_H
