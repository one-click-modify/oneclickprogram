#ifndef TITLEWIDGET_H
#define TITLEWIDGET_H

#include <QWidget>
#include <QLabel>
#include <QPushButton>
#include <QMouseEvent>
#include <QHBoxLayout>
#include <QSignalMapper>
#include <QVBoxLayout>
#include "push_button.h"
#include "tool_button.h"
#include "main_menu.h"

class TitleWidget : public QWidget
{
    Q_OBJECT
public:
    explicit TitleWidget(QWidget *parent = 0);
	void translateLanguage();

signals:

	void showSkin();
    void showMin();
	void showMainMenu();
	void closeWidget();
	void turnPage(int current_page);

public slots:

	void turnPage(QString current_page);

private:

    QPoint press_point;//鼠标按下去的点
    bool is_move;

    QLabel *version_title; //一键式标题
    PushButton *skin_button; //一键式换肤
    PushButton *main_menu_button; //主菜单
    PushButton *min_button; //最小化
    PushButton *feedback_button; //反馈意见
    PushButton *close_button; //关闭

    QLabel *safe_360_label;  //360安全卫士
	QLabel *safe_label;  //360安全卫士

	QList<ToolButton *> button_list;
};

#endif // TITLEWIDGET_H
