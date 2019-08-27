import QtQuick 2.0

Item {
    id: background

    anchors.fill: parent
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.16; color: "#41cd52" }
            GradientStop { position: 0.17; color: "#41cd52" }
            GradientStop { position: 0.92; color: "white" }
            GradientStop { position: 0.93; color: "white" }
        }
    }

    Image {
        source: "qrc:/image/qt_logo_green_128x128px.png"
        sourceSize: Qt.size(64, 64)

        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
    }
}

