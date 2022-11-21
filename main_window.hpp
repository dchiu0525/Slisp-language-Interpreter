#ifndef MAIN_WINDOW_HPP
#define MAIN_WINDOW_HPP

#include <string>

#include <QWidget>

#include "qt_interpreter.hpp"

class MainWindow: public QWidget{
  Q_OBJECT

public:

  MainWindow(QWidget * parent = nullptr);
  MainWindow(std::string filename, QWidget * parent = nullptr);

private:
	//MessageWidget* Message;
	//CanvasWidget* Canvas;
	//REPLWidget* REPL;

  QtInterpreter* interp;
};


#endif
