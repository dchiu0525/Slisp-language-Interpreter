#include "repl_widget.hpp"

#include <QWidget>
#include <QLabel>
#include <QLineEdit>
#include <QLayout>
#include <QKeyEvent>

REPLWidget::REPLWidget(QWidget * parent): QWidget(parent){
  // TODO: your code here
	QLabel* REPLLabel = new QLabel("slisp> ");
	REPLEdit = new QLineEdit;

	connect(REPLEdit, SIGNAL(editingFinished()), this, SLOT(changed()));
	QGridLayout* layout = new QGridLayout;
	layout->addWidget(REPLLabel, 0, 0);
	layout->addWidget(REPLEdit, 0, 1);
	setLayout(layout);
}

void REPLWidget::changed() {
  // TODO: your code here
	emit lineEntered(REPLEdit->text(),false);//make sure it is repl mode
	REPLEdit->clear();

}
