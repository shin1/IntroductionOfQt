import QtQuick 2.12
import QtWebEngine 1.0
import Qt.labs.presentation 1.0

Slide {
    title: qsTr("日本 Qt ユーザー会")

    content: [
        "もくもく会を月一回開催しています",
        "コミュニティを増やすため各種イベントに参加しています",
        "有志が技術同人誌を多数出しています",
    ]
    contentWidth: halfWidth

    Image {
        x: parent.width / 2
        anchors.verticalCenter: parent.verticalCenter
        source: "qrc:/image/ABC.png"
        sourceSize: Qt.size(1280/2, 800/2)
    }
}
