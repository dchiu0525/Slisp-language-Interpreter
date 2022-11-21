#include "qt_interpreter.hpp"

#include <string>
#include <sstream>
#include <iostream>
#include <cmath>
#include <fstream>

#include <QBrush>
#include <QDebug>

#include "qgraphics_arc_item.hpp"

#include "interpreter_semantic_error.hpp"

#define SQUARE 2
#define diameterofpoint 4
#define radiusofpoint 2
#define Pi atan2(0, -1)
#define degreetoraidus 180 / pi
#define sixteen 16
#define negativesixteen -16
QtInterpreter::QtInterpreter(QObject * parent): QObject(parent){
  // TODO: your code here...
}

void QtInterpreter::parseAndEvaluate(QString entry, bool mode){
  // TODO: your code here...
	//transfer qstring to string
	std::string inputfile;
	inputfile = entry.toStdString();
	bool check;
	Interpreter interp;
	bool check1=false;
	if (mode) {//means read file mode
		std::ifstream file(inputfile);
		if (!file.good()) {
		emiterrormessage("Error: can't open file");
		}
		else {
			check = interp.parse(file);
			check1 = true;
		}
	}
	else {
		std::istringstream file(inputfile);
		check = interp.parse(file);
		check1 = true;
	}
	//Interpreter interp;
	//interp.parse(file);
	if (check1) {
		if (!check) {
			emiterrormessage("Error: parse invalid");
		}
		else {
			Expression result;
			bool isvalidineval = true;
			try {
				result = interp.eval();
			}
			catch (std::runtime_error) {
				isvalidineval = false;
			}
			if (isvalidineval) {
				std::vector<Atom> allgraphicitem = interp.getwholegraphicsitems();
				for (unsigned int i = 0; i < allgraphicitem.size(); i++) {
					emitgraphicitem(allgraphicitem[i]);
				}
				emitcorrectmessage(result);
			}
			else {
				emiterrormessage("Error: Eval invalid");
			}
		}
	}

}

//convert the drawing item to signal
void QtInterpreter::emitgraphicitem(Atom eachitem){
	//seting item
	//QGraphicsItem * item;
	if (eachitem.type == PointType) {
		double height= diameterofpoint;
		double width = diameterofpoint;
		double x = eachitem.value.point_value.x - radiusofpoint;
		double y = eachitem.value.point_value.y - radiusofpoint;
		QGraphicsEllipseItem* point = new QGraphicsEllipseItem(x, y,width, height);
		point->setBrush(Qt::black);
		emit drawGraphic(point);
	}
	else if (eachitem.type == LineType) {
		double point1x = eachitem.value.line_value.first.x;
		double point1y = eachitem.value.line_value.first.y;
		double point2x = eachitem.value.line_value.second.x;
		double point2y = eachitem.value.line_value.second.y;
		QGraphicsLineItem* line = new QGraphicsLineItem(point1x, point1y, point2x, point2y);
		emit drawGraphic(line);
	}
	else if (eachitem.type == ArcType) {
		double pi = Pi;
		double centerx = eachitem.value.arc_value.center.x;
		double centery = eachitem.value.arc_value.center.y;
		double startx = eachitem.value.arc_value.start.x;
		double starty = eachitem.value.arc_value.start.y;
		double spanangle = eachitem.value.arc_value.span;
		spanangle = spanangle * degreetoraidus * sixteen;//transfer the span angle to radian
		double radius = sqrt(pow(centerx - startx, SQUARE) + pow(centery - starty, SQUARE));//use a^2+b^2=c^2 to find the radius
		double rectx = centerx - radius;
		double recty = centery - radius;
		double diameter = SQUARE * radius;
		double rectwidth = diameter;
		double height = diameter;
		double startangle = atan2(starty - centery, startx - centerx) * degreetoraidus * negativesixteen;
		//QGraphicsEllipseItem* arc = new QGraphicsArcItem(rectx, recty, rectwidth, height);
		QGraphicsArcItem* arc=new QGraphicsArcItem(rectx, recty, rectwidth, height);
		arc->setStartAngle(startangle);
		arc->setSpanAngle(spanangle);
		emit drawGraphic(arc);
	}
//	emit drawGraphic(item);//convert to signal

}

void QtInterpreter::emiterrormessage(QString message) {
	//QString message = "The entry is invalid";
	emit error(message);
}

void QtInterpreter::emitcorrectmessage(Expression result) {
	if (result.head.type == BooleanType) {
		emitbool(result);
	}
	else if (result.head.type == NumberType) {
		emitnumber(result);
	}
	else if (result.head.type == NoneType) {
		emitnone();
	}
	else if (result.head.type == PointType) {
		emitpoint(result);
	}
	else if (result.head.type == LineType) {
		emitline(result);
	}
	else if (result.head.type == ArcType) {
		emitarc(result);
	}
}

void QtInterpreter::emitbool(Expression result) {
	QString message;
	if (result.head.value.bool_value) {
		message = "(True)";
		emit info(message);
	}
	else {
		message = "(False)";
		emit info(message);
	}
}

void QtInterpreter::emitpoint(Expression result) {
	QString message;
	message.append("(");
	QString x = QString::number(result.head.value.point_value.x);
	message.append(x);
	message.append(",");
	QString y = QString::number(result.head.value.point_value.y);
	message.append(y);
	message.append(")");
	emit info(message);
}


void QtInterpreter::emitnumber(Expression result) {
	QString message;
	message.append("(");
	QString numbervalue = QString::number(result.head.value.num_value);
	message.append(numbervalue);
	message.append(")");
	emit info(message);
}

void QtInterpreter::emitline(Expression result) {
	QString message;
	message.append("(");
	message.append("(");
	QString x1 = QString::number(result.head.value.line_value.first.x);
	message.append(x1);
	message.append(",");
	QString y1 = QString::number(result.head.value.line_value.first.y);
	message.append(y1);
	message.append(")");
	message.append(",");
	message.append("(");
	QString x2 = QString::number(result.head.value.line_value.second.x);
	message.append(x2);
	message.append(",");
	QString y2 = QString::number(result.head.value.line_value.second.y);
	message.append(y2);
	message.append(")");
	message.append(")");
	emit info(message);
}


void QtInterpreter::emitarc(Expression result) {
	QString message;
	message.append("(");
	message.append("(");
	QString x1 = QString::number(result.head.value.arc_value.center.x);
	message.append(x1);
	message.append(",");
	QString y1 = QString::number(result.head.value.arc_value.center.y);
	message.append(y1);
	message.append(")");
	message.append(",");
	message.append("(");
	QString x2 = QString::number(result.head.value.arc_value.start.x);
	message.append(x2);
	message.append(",");
	QString y2 = QString::number(result.head.value.arc_value.start.y);
	message.append(y2);
	message.append(")");
	message.append(" ");
	QString span = QString::number(result.head.value.arc_value.span);
	message.append(span);
	message.append(")");
	emit info(message);
}

void QtInterpreter::emitnone() {
	QString message;
	message = "(None)";
	emit info(message);
}