#include "qgraphics_arc_item.hpp"

#include <cmath>

#include <QDebug>
#include <QPainter>


QGraphicsArcItem::QGraphicsArcItem(qreal x, qreal y, qreal width, qreal height,
    QGraphicsItem* parent) : QGraphicsEllipseItem(x, y, width, height, parent) {
    // TODO: your code here ...
}

void QGraphicsArcItem::paint(QPainter *painter,
                             const QStyleOptionGraphicsItem *option,
                             QWidget *widget) {
  // TODO: your code here ...
   // nooption(option);
   // nowidget(widget);
    (void) option;
    (void) widget;
    painter->setPen(pen());
    painter->setBrush(brush());
    painter->drawArc(rect(), startAngle(), spanAngle());

}


//void QGraphicsArcItem::paint(QPainter* painter) {
//    // TODO: your code here ...
//
//    painter->setPen(pen());
//    painter->setBrush(brush());
//    painter->drawArc(rect(), startAngle(), spanAngle());
//
//}