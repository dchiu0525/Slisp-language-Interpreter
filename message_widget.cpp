#include "message_widget.hpp"

#include <QLabel>
#include <QLayout>
#include <QLineEdit>
#include <QPalette>

MessageWidget::MessageWidget(QWidget *parent) : QWidget(parent) {
  // TODO: your code here...
	QLabel *MessageLabel = new QLabel("Message: ");
	MessageEdit = new QLineEdit;
	MessageEdit->setReadOnly(true); //make sure it does not have any input

	QGridLayout* layout = new QGridLayout;
	layout->addWidget(MessageLabel, 0, 0);
	layout->addWidget(MessageEdit, 0, 1);
	setLayout(layout);
}

void MessageWidget::info(QString message) {
  // TODO: your code here...
	//clear any error fromatting
	QPalette palette;
	MessageEdit->setPalette(palette);
	//outpput the text
	MessageEdit->setText(message);
}

void MessageWidget::error(QString message) {
  // TODO: your code here...
	MessageEdit->setText(message);
	MessageEdit->selectAll();
	//highlight with red background
	QPalette palette;
	palette.setColor(QPalette::Background, Qt::red);
	//palette.setColor(QPalette::Base, Qt::red);
	palette.setColor(QPalette::Highlight, Qt::red);

	MessageEdit->setPalette(palette);
}

void MessageWidget::clear() {
  // TODO: your code here...
	MessageEdit->clear();
}
