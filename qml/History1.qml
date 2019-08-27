import QtQuick 2.12
import Qt.labs.presentation 1.0

Slide {
    anchors.fill: parent

    Image {
        source: "qrc:/image/Qt_20years_infographic_big.jpg"
        sourceSize: Qt.size(1280 * 1200/1280, 800 * 1200/1280)
        anchors.centerIn: parent
    }
}
