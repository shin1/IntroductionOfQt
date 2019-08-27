import QtQuick 2.0

Rectangle {
    id: root
    property alias text: text.text
    property alias fontFamily: text.font.family
    width: 150
    height: 60
    color: "#002060"

    Text {
        id:text
        font.pixelSize: 20
        anchors.fill: parent
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
