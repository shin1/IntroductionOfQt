import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("デモ（Basics2）")

    Rectangle {
        id: demo1
        width: 300
        height: 300
        color: "blue"
        radius: 30
        property real angle: 0
        MouseArea {
            anchors.fill: parent
            onClicked: {
                demo1.angle += 45
                animation.start()
            }
        }
        PropertyAnimation {
            id: animation
            target: demo1
            property: "rotation"
            easing.type: Easing.OutBack
            to: demo1.angle
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
    property real angle: 0 <--- プロパティを追加
    MouseArea {
        anchors.fill: parent
        onClicked: {
            demo1.angle += 45
            animation.start()
        }
    }
    PropertyAnimation { <--- アニメーションを追加
        id: animation
        target: demo1
        property: \"rotation\"
        easing.type: Easing.OutBack
        to: demo1.angle
    }
}
"
    }
}
