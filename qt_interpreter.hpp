#ifndef QT_INTERPRETER_HPP
#define QT_INTERPRETER_HPP

#include <string>

#include <QObject>
#include <QString>
#include <QGraphicsItem>

#include "interpreter.hpp"

class QtInterpreter : public QObject, private Interpreter {
	Q_OBJECT

public:

	QtInterpreter(QObject* parent = nullptr);
	void emitgraphicitem(Atom eachitem);
	void emiterrormessage(QString message);
	void emitcorrectmessage(Expression result);
	void emitbool(Expression result);
	void emitline(Expression result);
	void emitnumber(Expression result);
	void emitarc(Expression result);
	void emitnone();
	void emitpoint(Expression result);
signals:

	void drawGraphic(QGraphicsItem* item);

	void info(QString message);

	void error(QString message);

public slots:

	void parseAndEvaluate(QString entry,bool mode);
};

#endif



