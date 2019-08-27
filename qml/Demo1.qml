import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("デモ（Basics1）")

    Rectangle {
        id: demo1
        width: 300
        height: 300
        color: "red"
        radius: 30
        MouseArea {
            anchors.fill: parent
            onClicked: {
                demo1.rotation += 30
            }
        }
    }

    CodeSection {
        text:
"import QtQuick 2.12

Rectangle {
    width: 400
    height: 400
    color: \"red\"
    radius:45
    MouseArea {
        anchors.fill: parent
        onClicked: {
            demo1.rotation += 30
        }
    }
}
"
    }
}
