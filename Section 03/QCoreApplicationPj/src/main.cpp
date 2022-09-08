#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "This is a QCore App without GUI";
    qDebug() << "Applicaiton name: " << QCoreApplication::applicationName();
    a.setApplicationVersion("1.0.0");
    qDebug() << "Applicaiton Version: " << QCoreApplication::applicationVersion();
    qDebug() << "Applicaiton directory path: " << QCoreApplication::applicationDirPath();
    qDebug() << "Applicaiton file path: " << QCoreApplication::applicationFilePath();
    qDebug() << "Application PID: " << QCoreApplication::applicationPid();
    qDebug() << "Application libraries path: " << QCoreApplication::libraryPaths();

    return a.exec();
}