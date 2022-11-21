#include "canvas_widget.hpp"

#include <QWidget>
#include <QGraphicsItem>
#include <QGraphicsScene>
#include <QGraphicsView>
#include <QLayout>

CanvasWidget::CanvasWidget(QWidget * parent): QWidget(parent){
  // TODO: your code here...
	scene = new QGraphicsScene(this);
	QGraphicsView *picture = new QGraphicsView(scene);
	QGridLayout *layout = new QGridLayout;
	layout->addWidget(picture);
	setLayout(layout);
}

void CanvasWidget::addGraphic(QGraphicsItem * item){
  // TODO: your code here...
	scene->addItem(item);
}
