#include <QGuiApplication>
#include <QQuickView>
#include <QtWebEngine>

int main(int argc, char* argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQuickView view;

    QtWebEngine::initialize();

    view.setTitle("Introduction of Qt");
    view.setSource(QUrl("qrc:/qml/main.qml"));
    view.setMinimumSize(QSize(1280, 800));
    view.show();

    return app.exec();
}
