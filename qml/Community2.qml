import QtQuick 2.12
import QtWebEngine 1.0
import Qt.labs.presentation 1.0

Slide {
    title: qsTr("日本 Qt ユーザー会")

    WebEngineView {
        anchors.fill: parent
        url: "http://qt-users.jp"
    }
}
