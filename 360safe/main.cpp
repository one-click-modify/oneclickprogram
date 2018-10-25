#include <QApplication>
#include <QTextCodec>
#include <QTranslator>
#include "main_widget.h"
#include <QSharedMemory>

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);
	QTextCodec *codec = QTextCodec::codecForName("System"); 
	QTextCodec::setCodecForLocale(codec); 



	QTranslator translator_zh;  
    //translator_zh.load(QString(":/qm/360safe_zh"));
    translator_zh.load(QString(":/qm/oneclick"));
	app.installTranslator(&translator_zh);  

	//加载QSS样式表
    QFile qss(":/qss/telecom");
	qss.open(QFile::ReadOnly);
	qApp->setStyleSheet(qss.readAll());
    qss.close();

	QSharedMemory shared_memory;
	shared_memory.setKey(QString("main_window"));
    //如果不创建，调用attach（）会失败，
	if(shared_memory.attach())
	{
		return 0;
	}
 
	if(shared_memory.create(1))
	{
		MainWidget main_widget;
		main_widget.setTranslator(&translator_zh);
		main_widget.showWidget();

		return app.exec(); 
	}
}
