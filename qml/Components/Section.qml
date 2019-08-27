import QtQuick 2.12
import Qt.labs.presentation 1.0

Slide {
    property alias sectionText: text.text
    Text {
        id: text
        font.pointSize: 80
        font.family: parent.fontFamily
        color: "white"
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -50
    }
}
