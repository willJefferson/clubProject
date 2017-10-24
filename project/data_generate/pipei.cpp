#include "pipei.h"
#include<QSqlQuery>
#include<QSqlDatabase>
#include<QList>
#include<QDebug>
#include<QSqlError>
#include<QStringList>
#include<QFile>
#include<QTextStream>
#include<typeinfo>
#include<QStringList>
#include<time.h>
#include<stdlib.h>
#include<QTime>
#define Rand(x) rand()%x
pipei::pipei(QWidget *parent) : QWidget(parent)
{
    vl=new QVBoxLayout(this);

    hl=new QHBoxLayout;
    submit=new QPushButton("绩点优先匹配");
    shijianduan_submit=new QPushButton("空闲时间优先");
    hl->addStretch(1);
    hl->addWidget(submit);
    hl->addStretch(1);
    hl->addWidget(shijianduan_submit);
    hl->addStretch(1);

    vl->addStretch(1);
    vl->addLayout(hl);
    vl->addStretch(1);
    mo=1;
    connect(submit,SIGNAL(clicked(bool)),this,SLOT(pp()));
    connect(shijianduan_submit,SIGNAL(clicked(bool)),this,SLOT(fasong_signal()));
    connect(this,SIGNAL(moshi_signal()),this,SLOT(pp()));
    qDebug()<<"wancheng";
}
void pipei::fasong_signal(){
    mo=2;
    qDebug()<<"进入信号";
    emit moshi_signal();
}


void pipei::pp(){

    QTime qtime;

    qtime.start();
    srand((unsigned)time(NULL));
    //准备工作
    QFile file("output_condition.txt");
    QTextStream fileOut(&file);
    file.open(QIODevice::WriteOnly | QIODevice::Text);

    int jishu(0);

    qDebug()<<"   mo    "<<mo;
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
    int zongrenshu(0);
    query.exec("SELECT SUM(renshu) FROM bumen_test");
    while(query.next()){
        zongrenshu=query.value(0).toInt();
    }

    //先建立一个javabean list包装 然后取数据库查询  找到所有的社团信息
    QList<bumen> bumen_list;
    bumen b;
    query.exec("select * from bumen_test");

    while(query.next()){
        b.id=query.value(0).toInt();
        b.mingcheng=query.value(1).toString();
        b.renshu=query.value(2).toInt();
        b.biaoqian=query.value(3).toString();
        b.shijian=query.value(4).toString();
        b.yipipei="";
        bumen_list.push_back(b);
    }




    //然后  读取所有学生按照绩点、学号的排名
    QList<stu> stu_list;
    stu s;
    if(mo==1){
        query.exec("select * from stu_test ORDER BY jidian DESC");
    }else if (mo==2) {
        query.exec("SELECT * from stu_test ORDER BY LENGTH(xingqu) DESC");
        qDebug()<<"mo等于2 的进来了";
    }


    while(query.next()){
        s.xuehao=query.value(0).toInt();
        s.jidian=query.value(1).toInt();
        s.xingqu=query.value(2).toString();
        s.zhiyuan=query.value(3).toString();
        s.kongxian=query.value(4).toString();
        s.yipipei="";
        stu_list.push_back(s);
    }
    //读取他们的志愿
    numberOfStudent=stu_list.size();
    qDebug()<<"numberOfStudent"<<numberOfStudent;
    QString zhiyuan(""),xingqu(""),kongxian(""),xingqu_suiji("");
    QStringList zhiyuanList,xingquList,shijianList;
    QVector<int> indexs={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19};
    QVector<int> indexs_lunxun(indexs);
    bumen bumen_detail;
    stu stu_singal;
    int size_zhiyuanList(0),zhiyuan_bumen(0),xuehao(0),size_xingquList(0),zong(0),
    size_shijianList(0),j(0),suiji_index(0),m(0),suiji_bumen_index(0);
    bool isSuccess=false,isBreak(false);
    //学生进行轮询
    for(int i=0;i<numberOfStudent;i++){
        //取出每个学生的信息
        stu_singal=stu_list[i];
        zhiyuan=stu_singal.zhiyuan;
        xingqu=stu_singal.xingqu;
        kongxian=stu_singal.kongxian;
        xuehao=stu_singal.xuehao;

        zhiyuanList=zhiyuan.split(",");
        //zhiyuanList 里面的应该是  D1 D2 D3这种了
        size_zhiyuanList=zhiyuanList.size();
        qDebug()<<"size_zhiyuanList  "<<size_zhiyuanList;

        //拿到志愿部门列表之后  那么 接下来就是拿志愿部门单个的  如果按照表里顺序拿 每次匹配都是一样的
        //那么 就随机再志愿部门列表里面拿  这样 就每次可以不一样了
        while(j<size_zhiyuanList){
            suiji_index=Rand(zhiyuanList.size());
            zhiyuan_bumen=zhiyuanList[suiji_index].mid(1).toInt();
            //xingquList=xingqu.split(",");
            shijianList=bumen_list[zhiyuan_bumen-1].shijian.split(",");
            //size_xingquList=xingquList.size();
            size_shijianList=shijianList.size();
            if(bumen_list[zhiyuan_bumen-1].renshu>0){

                for(int k=0;k<size_shijianList;k++){
                    //再匹配shijian
                    if(kongxian.contains(shijianList[k])){
                        //到这里就匹配成功了
                        //部门已匹配 写上学生的名字
                        qDebug()<<"进来了";
                        if(bumen_list[zhiyuan_bumen-1].yipipei.contains(QString::number(xuehao))){
                            continue;
                        }
                        bumen_list[zhiyuan_bumen-1].yipipei.append(QString::number(xuehao)+",");
                        qDebug()<<" bumen_detail.yipipei  "<< bumen_list[zhiyuan_bumen-1].yipipei;
                        //学生已匹配 写上部门的名字
                        stu_list[i].yipipei.append(bumen_list[zhiyuan_bumen-1].mingcheng+",");

                        //社团纳新人数减一
                        if(bumen_list[zhiyuan_bumen-1].renshu>0){
                            bumen_list[zhiyuan_bumen-1].renshu--;
                        }
                        jishu++;
                        isSuccess=true;

                    }
                }
            }

            zhiyuanList.removeAt(suiji_index);
            j++;

        }
        j=0;

        //测试完了志愿+时间
        //如果此时的isSuccess仍然为false 那么 就对该生的兴趣进行匹配

        if(isSuccess==false){
            xingquList=xingqu.split(",");
            size_xingquList=xingquList.size();
            qDebug()<<"size_zhiyuanList  "<<size_zhiyuanList;
            while(m<size_xingquList){
                suiji_index=Rand(xingquList.size());
                xingqu_suiji=xingquList[suiji_index];

                //随机出一个部门  进行匹配
                //给出一个数组的下标
                //并且需要循环全部部门
                while(zong<20){
                    suiji_bumen_index=Rand(indexs_lunxun.size());
                    //然后取出这个位置
                    shijianList=bumen_list[indexs_lunxun[suiji_bumen_index]].shijian.split(",");
                    size_shijianList=shijianList.size();
                    if(bumen_list[indexs_lunxun[suiji_bumen_index]].renshu>0){
                        if(bumen_list[indexs_lunxun[suiji_bumen_index]].biaoqian.contains(xingqu_suiji)){
                            //再兴趣匹配上的情况下再进行时间的匹配
                            for(int k=0;k<size_shijianList;k++){
                                //再匹配shijian
                                if(kongxian.contains(shijianList[k])){
                                    //到这里就匹配成功了
                                    //部门已匹配 写上学生的名字
                                    qDebug()<<"进来了";
                                    if(bumen_list[indexs_lunxun[suiji_bumen_index]].yipipei.contains(QString::number(xuehao))){
                                        continue;
                                    }
                                    if(stu_list[i].yipipei.split(",").size()>5){
                                        break;
                                        isBreak=true;
                                    }
                                    bumen_list[indexs_lunxun[suiji_bumen_index]].yipipei.append(QString::number(xuehao)+",");
                                    qDebug()<<" bumen_detail.yipipei  "<< bumen_list[indexs_lunxun[suiji_bumen_index]].yipipei;
                                    //学生已匹配 写上部门的名字
                                    stu_list[i].yipipei.append(bumen_list[indexs_lunxun[suiji_bumen_index]].mingcheng+",");

                                    //社团纳新人数减一
                                    if(bumen_list[indexs_lunxun[suiji_bumen_index]].renshu>0){
                                        bumen_list[indexs_lunxun[suiji_bumen_index]].renshu--;
                                    }
                                    jishu++;
                                    isSuccess=true;

                                }
                            }
                            if(isBreak==true){
                                break;
                            }
                        }
                    }


                    zong++;
                }
                zong=0;
                isBreak=false;


                indexs_lunxun.removeAt(suiji_bumen_index);
                m++;

            }

        }
        m=0;
        indexs_lunxun=indexs;

        //如果此时仍然没有匹配到部门 那么 就进行只有时间上的匹配

        if(isSuccess==false){
            for(int a=0;a<20;a++){
                //直接寻找部门 进行匹配时间
                if(bumen_list[a].renshu>0){
                    shijianList=bumen_list[a].shijian.split(",");
                    size_shijianList=shijianList.size();
                    for(int j=0;j<size_shijianList;j++){
                        if(kongxian.contains(shijianList[j])){
                            if(bumen_list[a].yipipei.contains(QString::number(xuehao))){
                                continue;
                            }
                            if(stu_list[i].yipipei.split(",").size()>5){
                                break;
                                isBreak=true;
                            }
                            bumen_list[a].yipipei.append(QString::number(xuehao)+",");
                            qDebug()<<" bumen_detail.yipipei  "<< bumen_list[indexs_lunxun[suiji_bumen_index]].yipipei;
                            //学生已匹配 写上部门的名字
                            stu_list[i].yipipei.append(bumen_list[a].mingcheng+",");

                            //社团纳新人数减一
                            if(bumen_list[a].renshu>0){
                                bumen_list[a].renshu--;
                            }
                            isSuccess=true;
                        }
                    }
                    if(isBreak==true){
                        break;
                    }
                }


            }
        }
        isSuccess=false;
        isBreak=false;


    }
    //至此 一轮匹配就结束了

    qDebug()<<"yilun";

    int stu_count(0);
    for(int i=0;i<300;i++){
        //写回数据库

        query.exec("UPDATE stu_test set yipipei ='"+stu_list[i].yipipei+"' WHERE xuehao='"+QString::number(stu_list[i].xuehao)+"'");
        if(stu_list[i].yipipei!=""){
            stu_count++;
        }

    }

    for(int i=0;i<20;i++){
        //数据的输出得再写一下



        bumen_detail=bumen_list.at(i);
        qDebug()<<bumen_detail.mingcheng<<"  "<<bumen_detail.yipipei;
        fileOut<<bumen_detail.mingcheng<<"  "<<bumen_detail.yipipei<<"\n";
        query.exec("UPDATE bumen_test set yipipei ='"+bumen_list[i].yipipei+"' WHERE mingcheng='"+bumen_list[i].mingcheng+"'");
    }
    fileOut<<QString("未匹配学生数")<<(300-stu_count);

    qDebug()<<"jishu  "<<jishu;
    emit show_shuju(stu_count,zongrenshu);
    qDebug()<<qtime.elapsed()/1000.0<<"s";

}
