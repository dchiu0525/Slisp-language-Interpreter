#ifndef QGRAPHIC_ARC_ITEM_HPP
#define QGRAPHIC_ARC_ITEM_HPP

#include <QGraphicsEllipseItem>

class QGraphicsArcItem: public QGraphicsEllipseItem{

public:

	QGraphicsArcItem(qreal x, qreal y, qreal width, qreal height,
		QGraphicsItem* parent = nullptr);

  void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
  //void nooption(const QStyleOptionGraphicsItem* option);
  //void nowidget(QWidget* widget);
 // void paint(QPainter* painter);
private:

};


#endif
