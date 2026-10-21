#include "mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setApplicationName(QStringLiteral("Дневник тренировок"));
    app.setOrganizationName(QStringLiteral("Example"));

    MainWindow window;
    window.show();

    return app.exec();
}
