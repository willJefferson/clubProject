#ifndef BUMEN_WIDGET_H
#define BUMEN_WIDGET_H

#include <QWidget>
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
//        if(index.column() == 0)
//            return NULL;
//        if(index.column() == 4)
//        {
//            QComboBox*  combo = new QComboBox(parent);
//            combo->addItem("男");
//            combo->addItem("女");
//            return combo;
//        }

        return QItemDelegate::createEditor(parent, option, index);
    }
};
class MyTableModel : public QSqlTableModel//更改显示文字
{
public:
//    QVariant data(const QModelIndex &idx, int role = Qt::DisplayRole) const
//    {

//        if(idx.column() != 4)
//            return QSqlTableModel::data(idx, role);

//        QVariant var = QSqlTableModel::data(idx, role);
//        if(var == 0)
//        {
//            return "女";
//        }

//        return "男";
//    }

//    bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
//    {
//        if(index.column() != 4)
//            return QSqlTableModel::setData(index, value, role);

//        if(value == "男")
//            return QSqlTableModel::setData(index, 1, role);
//        return QSqlTableModel::setData(index, 0, role);
//    }

};

class bumen_widget : public QWidget
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
    explicit bumen_widget(QWidget *parent = 0,QString tableName="bumen_test");
    ~bumen_widget();
signals:

public slots:
    void slot_add();
    void slot_update();
    void slot_del();
    void slot_submit();
    void slot_datachange(QModelIndex,QModelIndex,QVector<int>);
    void slot_filter(QString);

};

#endif // BUMEN_WIDGET_H
