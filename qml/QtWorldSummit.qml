import QtQuick 2.12
import QtWebEngine 1.0
import Qt.labs.presentation 1.0

Slide {
    title: qsTr("Qt World Summit 2019")

    WebEngineView {
        anchors.fill: parent
        url: "https://www.qt.io/jp/qtws19_tokyo"
    }
}
