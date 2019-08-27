import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("QML(Qt Meta-Object Language)")

    content: [
        "iPhoneのようなUIをQtで簡単に作れるような環境を...、ということで開発された宣言型のプログラミング言語",
        "ロジックはJavascriptもしくはC++で実装",
        "OpenGL を使って描画している",
        " OpenVGやCPUレンダリングも可能です",
        "基本インタプリタ",
        " Qt Quick Compiler, キャッシュ技術で高速化を図っている",
    ]
    contentWidth: halfWidth
    baseFontSize: 30

    CodeSection {
        fontSize: 20
        text:
"import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 360; height: 360

    Label {
        text: qsTr(\"Hello World\")
        anchors.centerIn: parent
    }
}"
    }
}
