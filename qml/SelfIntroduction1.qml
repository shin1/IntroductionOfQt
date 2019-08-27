import QtQuick 2.12
import Qt.labs.presentation 1.0

Slide {
    title: "自己紹介"

    content: [
       "岡田 真一（おかだ しんいち）",
    ]
    contentWidth: parent.width * 3/5
    baseFontSize: 30

    Rectangle {
        x: parent.width / 2 + 100
        width: parent.width / 2
        height: parent.height
        color: "transparent"

        Image {
            id: image
            source: "qrc:/image/face.png"
            sourceSize: Qt.size(240, 320)
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: image
            onPressed: {
                image.scale = 1.2
            }
            onReleased: {
                image.scale = 1.0
            }
        }
    }
}
