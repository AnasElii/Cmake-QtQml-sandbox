#include <QGUIApplication>
#include <QQMLApplicationENgine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    engine.load(QUrl(u"qrc:/rec/ui/main.qml"_qs));
    return app.exec();
}