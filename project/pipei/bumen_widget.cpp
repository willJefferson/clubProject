#include "bumen_widget.h"
#include<QSqlDatabase>
#include<QDebug>
#include<QSqlError>
#include<QSqlTableModel>
#include<QSqlRecord>
#include<QItemSelectionModel>
#include<QModelIndexList>
#include<QList>
#include<QModelIndex>
#include<QCompleter>
#include<QLineEdit>
#include<QStringList>
#include<QString>
bumen_widget::bumen_widget(QWidget *parent,QString tableName) : QWidget(parent)
{
    //ui->setupUi(this);

    db=QSqlDatabase::addDatabase("QMYSQL");
    db.setHostName("127.0.0.1");
    db.setUserName("root");
    db.setPassword("root");
    db.setDatabaseName("mydb61");
    bool isopen=db.open();
    if(isopen==false){
        qDebug()<<"ERROR:"<<db.lastError();
        exit(0);
    }

    model=new MyTableModel();

    //model->setTable("contact");
    model->setTable(tableName);
    model->setEditStrategy(QSqlTableModel::OnManualSubmit);//设置提交模式为自动挡
    connect(model,SIGNAL(dataChanged(QModelIndex,QModelIndex,QVector<int>)),this,SLOT(slot_datachange(QModelIndex,QModelIndex,QVector<int>)));

    model->select();

    view=new QTableView();
    view->setModel(model);

    view->setItemDelegate(new TUserDelegate);

    vl=new QVBoxLayout(this);
    hl=new QHBoxLayout();
    vl->addWidget(view);



    add=new QPushButton();
    del=new QPushButton();
    //update=new QPushButton;
    submit=new QPushButton;

    add->setText("add");
    del->setText("del");
    //update->setText("update");
    submit->setText("submit");

    filter=new QLineEdit();


    hl->addWidget(filter);
    hl->addWidget(add);
    hl->addWidget(del);
    //hl->addWidget(update);
    hl->addWidget(submit);

    vl->addLayout(hl);

    connect(add,SIGNAL(clicked(bool)),this,SLOT(slot_add()));
    connect(del,SIGNAL(clicked(bool)),this,SLOT(slot_del()));
    //connect(update,SIGNAL(clicked(bool)),this,SLOT(slot_update()));
    connect(submit,SIGNAL(clicked(bool)),this,SLOT(slot_submit()));
    connect(filter,SIGNAL(textChanged(QString)),this,SLOT(slot_filter(QString)));

}
void bumen_widget::slot_add(){
    QSqlRecord record=model->record();
    model->insertRecord(-1,record);
}
void bumen_widget::slot_del(){
    QList<int> list;
    QItemSelectionModel *selectionModel=view->selectionModel();
    QModelIndexList index_list=selectionModel->selectedIndexes();
    for(int i=0;i<index_list.size();i++){
            QModelIndex index=index_list.at(i);
            list<<index.row();
    }
    while(list.size()>0){
        int i=list.at(0);
        list.removeAll(i);
        model->removeRow(i);
    }
    model->submitAll();
}
void bumen_widget::slot_datachange(QModelIndex,QModelIndex,QVector<int>){


    QStringList list;

    int count=model->rowCount();

        for(int i=0;i<count;i++){
           QSqlRecord record= model->record(i);
           for(int j=0;j<record.count();j++){
               if(record.value(j)==NULL) continue;
               list<<record.value(j).toString();
           }

        }


    QCompleter *completer=new QCompleter(list);
    completer->setFilterMode(Qt::MatchContains);

    filter->setCompleter(completer);


}
void bumen_widget::slot_submit(){
    model->submitAll();

}
void bumen_widget::slot_filter(QString text){

    if(text.isEmpty()){
        filter->setText("");
        model->setFilter("");
        model->select();
        return;
    }
    QString str("");
    QSqlRecord record= model->record();
    int count=record.count();
    if(count>0){
        for(int i=0;i<count;i++){
            if(i!=0){
                str+=" or ";
            }
            QString file=record.fieldName(i);
            QString substr("");
            substr+=QString().sprintf("%s like '%%%s%%'",file.toUtf8().data(),text.toUtf8().data());
            //qDebug()<<substr;
            str+=substr;
        }
    }
    qDebug()<<str;
    model->setFilter(str);
    model->select();

}

void bumen_widget::slot_update(){

}

bumen_widget::~bumen_widget()
{
    //delete ui;
}
