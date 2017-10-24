#ifndef SHUJU_H
#define SHUJU_H

#include <QWidget>
#include<QSqlTableModel>
#include<QTableView>
#include<QHBoxLayout>
#include<QPushButton>
#include<QLineEdit>
#include<QVBoxLayout>
#include<QItemDelegate>
#include<QComboBox>
#include<QVariant>
#include<QSqlDatabase>
class TUserDelegate : public QItemDelegate//在代理里面可以针对列 去换显示的控件
{
    QWidget *createEditor(QWidget * parent,
                          const QStyleOptionViewItem &option,
                          const QModelIndex &index) const
    {


        return QItemDelegate::createEditor(parent, option, index);
    }
};
class MyTableModel : public QSqlTableModel//更改显示文字
{
public:


};
class shuju : public QWidget
{
    Q_OBJECT
public:
    QSqlDatabase db;
    QSqlTableModel *model;
    QTableView *view;
    QHBoxLayout *hl;
    QVBoxLayout *vl;
    QPushButton *add;
    QPushButton *update;
    QPushButton *submit;
    QPushButton *del;
    QLineEdit *filter;
    explicit shuju(QWidget *parent = 0,QString tableName="bumen_test");

signals:

public slots:
    void slot_add();
    void slot_update();
    void slot_del();
    void slot_submit();
    void slot_datachange(QModelIndex,QModelIndex,QVector<int>);
    void slot_filter(QString);
};

#endif // SHUJU_H
