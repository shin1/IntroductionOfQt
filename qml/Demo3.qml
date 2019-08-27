import QtQuick 2.12
import QtWebEngine 1.0
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("デモ（Web）")

    WebEngineView {
        width: parent.width / 2 - 50
        height: parent.height
        url: "https://www.qt.io/jp"
    }

    CodeSection {
        text:
"import QtQuick 2.12
import QtQuick.Window 2.12
import QtWebEngine 1.8

Window {
    width: 1024
    height: 750
    visible: true
    WebEngineView {
        anchors.fill: parent
        url: \"https://www.qt.io\"
    }
}"
    }
}
