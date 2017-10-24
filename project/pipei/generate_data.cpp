#include "generate_data.h"
#include<QJsonObject>
#include<QJsonArray>
#include<QJsonDocument>
#include<time.h>
#include<stdlib.h>
#include<QFile>
#include<QTextStream>
#include<QSqlQuery>
#include<QSqlError>
#include<QString>
#include<QDebug>
#define Rand(x) rand()%x
generate_data::generate_data(QWidget *parent) : QWidget(parent)
{
    vl=new QVBoxLayout(this);

    hl=new QHBoxLayout;
    submit=new QPushButton("生成数据");

    hl->addStretch(1);
    hl->addWidget(submit);
    hl->addStretch(1);

    vl->addStretch(1);
    vl->addLayout(hl);
    vl->addStretch(1);

    connect(submit,SIGNAL(clicked(bool)),this,SLOT(shengcheng()));
    qDebug()<<"wancheng";

}
void generate_data::shengcheng(){


    srand((unsigned)time(NULL));

    QFile file("import.txt");
    QTextStream fileOut(&file);
    file.open(QIODevice::WriteOnly | QIODevice::Text);



    QSqlDatabase db=QSqlDatabase::addDatabase("QMYSQL");
    db.setHostName("127.0.0.1");
    db.setUserName("root");
    db.setPassword("root");
    db.setDatabaseName("mydb61");

    bool isopen=db.open();
    if(isopen==false){

        qDebug()<<"ERROR:"<<db.lastError()<<"";
        exit(0);
    }
    QSqlQuery query;
    query.exec("truncate table stu_test");
    query.exec("truncate table bumen_test");

    for(int i=0;i<7;i++){
        for(int j=0;j<5;j++){
            shijianduan_zong.push_back(weekdays[i]+":"+times[j]);
        }
    }


    QVector<QString> shijianduan=shijianduan_zong;
    QVector<QString> biao=biaoqians;
    QVector<QString> zhiyuan=bumen_mingcheng;
    int j(0),k(0),m(0);
    QString shijian_str(""),biaoqian_str(""),zhiyuan_str("");

    //先来一个qjsonObj  控制总的
    QJsonObject zong;

    QJsonArray student;

    //再jsonArray里面写jsonObject
    int base_xuehao=170320000;
    for(int i=0;i<300;i++){

        //随机生成绩点

        jidian=Rand(5)+1;

        stu_instance.insert("jidian",jidian);

        stu_instance.insert("xuehao",base_xuehao+i);
        //生成空闲时间段
        QJsonArray kongxian_shijian;
        huodong_cishu=Rand(3)+1;
        while(j<huodong_cishu){
            //随机生成index  再到shijianduan取数据
            suiji_huodong_index=Rand(shijianduan.size());
            suiji_huodong_temp=shijianduan[suiji_huodong_index];

            kongxian_shijian.insert(j,suiji_huodong_temp);

            if(j==huodong_cishu-1){
                shijian_str.append(suiji_huodong_temp);
            }else {
                shijian_str.append(suiji_huodong_temp+",");
            }

            shijianduan.removeAt(suiji_huodong_index);
            j++;
        }

        stu_instance.insert("kongxian_shijian",kongxian_shijian);

        //生成标签

        //生成标签的数量 每个部门不多于5个标签
        biaoqian_geshu=Rand(5)+1;
        QJsonArray biao_array;
        while(k<biaoqian_geshu){
            suiji_biaoqian_index=Rand(biao.size());
            suiji_biaoqian_temp=biao[suiji_biaoqian_index];

            biao_array.insert(k,suiji_biaoqian_temp);

            if(k==biaoqian_geshu-1){
                biaoqian_str.append(suiji_biaoqian_temp);
            }else {
                biaoqian_str.append(suiji_biaoqian_temp+",");
            }


            biao.removeAt(suiji_biaoqian_index);
            k++;
        }

        stu_instance.insert("biaoqian",biao_array);

        //生成志愿 志愿数少于5个
        zhiyuan_shu=Rand(5)+1;
        QJsonArray zhi_array;
        while(m<zhiyuan_shu){
            suiji_zhiyuan_index=Rand(zhiyuan.size());
            suiji_zhiyuan_temp=zhiyuan[suiji_zhiyuan_index];

            zhi_array.insert(m,suiji_zhiyuan_temp);


            if(m==zhiyuan_shu-1){
                zhiyuan_str.append(suiji_zhiyuan_temp);
            }else {
                zhiyuan_str.append(suiji_zhiyuan_temp+",");
            }

            zhiyuan.removeAt(suiji_zhiyuan_index);
            m++;
        }

        stu_instance.insert("zhiyuan",zhi_array);


        student.insert(i,stu_instance);

        //将数据写入数据库
        query.prepare("insert into stu_test values(?,?,?,?,?,?)");
        query.bindValue(0,base_xuehao+i);
        query.bindValue(1,jidian);
        query.bindValue(2,biaoqian_str);
        query.bindValue(3,zhiyuan_str);
        query.bindValue(4,shijian_str);
        query.bindValue(5,"");
        bool success = query.exec();
        if(!success){
            QSqlError lastError = query.lastError();
            qDebug() << "插入失败：" << lastError.driverText() << lastError.databaseText();return;
        }


        j=0;
        k=0;
        m=0;
        shijianduan=shijianduan_zong;
        biao=biaoqians;
        zhiyuan=bumen_mingcheng;
        shijian_str="";
        biaoqian_str="";
        zhiyuan_str="";
    }


    zong.insert("student",student);

    QJsonArray bumen;
    //生成一周之内的所有时间段
    shijian_str="";
    biaoqian_str="";
    j=0;
    k=0;
    //int bumen_bianhao=0;

    for(int i=0;i<20;i++){
        naxin_renshu=Rand(6)+10;
        bumen_instance.insert("naxin_renshu",naxin_renshu);

        bumen_instance.insert("bianhao",bumen_mingcheng[i]);
        //随机生成时间段

        //随机生成时间段个数  每个社团一周不超过3次
        huodong_cishu=Rand(3)+1;


        QJsonArray huodong_shijian;

        while(j<huodong_cishu){
            //随机生成index  再到shijianduan取数据
            suiji_huodong_index=Rand(shijianduan.size());
            suiji_huodong_temp=shijianduan[suiji_huodong_index];

            huodong_shijian.insert(j,suiji_huodong_temp);

            if(j==huodong_cishu-1){
                shijian_str.append(suiji_huodong_temp);
            }else {
                shijian_str.append(suiji_huodong_temp+",");
            }

            shijianduan.removeAt(suiji_huodong_index);
            j++;
        }

        bumen_instance.insert("huodong_shijian",huodong_shijian);

        //生成标签

        //生成标签的数量 每个部门不多于5个标签
        biaoqian_geshu=Rand(5)+1;
        QJsonArray biao_array;
        while(k<biaoqian_geshu){
            suiji_biaoqian_index=Rand(biao.size());
            suiji_biaoqian_temp=biao[suiji_biaoqian_index];

            biao_array.insert(k,suiji_biaoqian_temp);

            if(k==biaoqian_geshu-1){
                biaoqian_str.append(suiji_biaoqian_temp);
            }else {
                biaoqian_str.append(suiji_biaoqian_temp+",");
            }

            biao.removeAt(suiji_biaoqian_index);
            k++;
        }

        bumen_instance.insert("biaoqian",biao_array);

        bumen.insert(i,bumen_instance);

        //将数据写入数据库
        query.prepare("insert into bumen_test values(?,?,?,?,?,?)");
        query.bindValue(0,i);
        query.bindValue(1,bumen_mingcheng[i]);
        query.bindValue(2,naxin_renshu);
        query.bindValue(3,biaoqian_str);
        query.bindValue(4,shijian_str);
        query.bindValue(5,"");
        bool success = query.exec();
        if(!success){
            QSqlError lastError = query.lastError();
            qDebug() << "插入失败：" << lastError.driverText() << lastError.databaseText();return;
        }


        j=0;
        k=0;
        shijianduan=shijianduan_zong;
        biao=biaoqians;

        biaoqian_str="";
        shijian_str="";
    }


    zong.insert("bumen",bumen);


    QJsonDocument zong_document;
    zong_document.setObject(zong);
    QByteArray zong_byte_array = zong_document.toJson();
    QString zong_json_str(zong_byte_array);

    fileOut<<zong_json_str;

    emit show_shuju();

}
