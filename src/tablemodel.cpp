#include "tablemodel.h"

TableModel::TableModel(QObject *parent)
    : QAbstractTableModel(parent)
{
    m_data << "Core";
    m_data << "GUI";
    m_data << "Widgets";
    m_data << "Multimedia";
    m_data << "MultimediaWidgets";
    m_data << "Network";
    m_data << "QML";
    m_data << "Quick";
    m_data << "Quick Layout";
    m_data << "Quick Controls";
    m_data << "Quick Dialogs";
    m_data << "SQL";
    m_data << "Test";
}

int TableModel::rowCount(const QModelIndex &) const
{
    return m_data.size() / 5;
}

int TableModel::columnCount(const QModelIndex &) const
{
    return 15;
}

QVariant TableModel::data(const QModelIndex &index, int role) const
{
    return m_data.at((index.row() * 5) + index.column());
}
