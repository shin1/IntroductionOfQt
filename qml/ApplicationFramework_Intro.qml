import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("アプリケーションフレームワーク")

    content: [
        "アプリケーション全体の制御を管理するフレームワークとなっています",
        " 画面制御",
        " イベント制御",
        " ...",
    ]
    contentWidth: halfWidth

    CodeSection {
        text:
"#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView view;

    view.setTitle(\"Introduction of Qt\");
    view.setSource(QUrl(\"qrc:/main.qml\"));
    view.show();

    return app.exec();
}
"
    }
}
