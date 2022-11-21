#include "main_window.hpp"

#include <iostream>

#include <QLayout>
#include <QFile>

#include "message_widget.hpp"
#include "canvas_widget.hpp"
#include "repl_widget.hpp"
#include "interpreter_semantic_error.hpp"

MainWindow::MainWindow(QWidget * parent): MainWindow("", parent){
 // // TODO: your code here...
	////DEFAULT THREE STAGE
	//MessageWidget* Message;
	//CanvasWidget* Canvas;
	//REPLWidget* REPL; 
	//Message = new MessageWidget;
	//Canvas = new CanvasWidget;
	//REPL = new REPLWidget;
	//this->interp = new QtInterpreter;
	//connect(REPL, SIGNAL(lineEntered(QString,bool)), this->interp, SLOT(parseAndEvaluate(QString,bool)));//put the input into interpreter
	////interpreter message to message setting
	//connect(this->interp, SIGNAL(info(QString)), Message, SLOT(info(QString)));
	//connect(this->interp, SIGNAL(error(QString)), Message, SLOT(error(QString)));
	////interpter drawing to repl widget setting
	//connect(this->interp, SIGNAL(drawGraphic(QGraphicsItem*)), Canvas, SLOT(addGraphic(QGraphicsItem*)));
	////label layout
	//QGridLayout* layout = new QGridLayout;
	//layout->addWidget(Message, 0, 0);
	//layout->addWidget(Canvas,2,0);
	//layout->addWidget(REPL, 3, 0);


	//setLayout(layout);
}

MainWindow::MainWindow(std::string filename, QWidget * parent): QWidget(parent){
  // TODO: your code here...
		//DEFAULT THREE STAGE
	MessageWidget* Message;
	CanvasWidget* Canvas;
	REPLWidget* REPL;
	 Message = new MessageWidget;
	 Canvas = new CanvasWidget;
	 REPL = new REPLWidget;
	this->interp = new QtInterpreter;
	//use bool to adjust the mode
	connect(REPL, SIGNAL(lineEntered(QString,bool)), this->interp, SLOT(parseAndEvaluate(QString,bool)));//put the input into interpreter
	//interpreter message to message setting
	connect(this->interp, SIGNAL(info(QString)), Message, SLOT(info(QString)));
	connect(this->interp, SIGNAL(error(QString)), Message, SLOT(error(QString)));
	//interpter drawing to repl widget setting
	connect(this->interp, SIGNAL(drawGraphic(QGraphicsItem*)), Canvas, SLOT(addGraphic(QGraphicsItem*)));

	// file(filename);
	//QString input;
	//if (file.open(QIODevice::ReadOnly)) {
	//	QDataStream in(&file);
	//	in>>input;
	//	this->interp->parseAndEvaluate(input);
	//}


	//QFile file(filename);
	//if (file.open(QIODevice::ReadOnly | QIODevice::Text)) {
	//	QString entry = file.readAll();
	//	this->interp->parseAndEvaluate(entry);
	//}
	QString inputfile = QString::fromStdString(filename);
	this->interp->parseAndEvaluate(inputfile,true);
	//label layout


	//std::string inputfile;
	//inputfile = entry.toStdString();

	//std::ifstream file(inputfile);
	//if (!file.good()) {
	//	emiterrormessage("Error: can't open file");
	//}
	//else {

	//}
	QGridLayout * layout = new QGridLayout;
	layout->addWidget(Message, 0, 0);
	layout->addWidget(Canvas,1,0);
	layout->addWidget(REPL, 3, 0);


	setLayout(layout);

}
