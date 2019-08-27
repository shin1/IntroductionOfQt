import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("モジュール")

    Column {
        spacing: 100
        anchors.centerIn: parent

        Grid {
            columns: 5
            spacing: 5
            ModuleText { text: "Core" }
            ModuleText { text: "GUI" }
            ModuleText { text: "Widgets" }
            ModuleText { text: "Multimedia" }
            ModuleText { text: "Multimedia\nWidgets" }
            ModuleText { text: "Network" }
            ModuleText { text: "QML" }
            ModuleText { text: "Quick" }
            ModuleText { text: "Quick Layout" }
            ModuleText { text: "Quick Controls" }
            ModuleText { text: "Quick Dialogs" }
            ModuleText { text: "Quick Test" }
            ModuleText { text: "SQL" }
            ModuleText { text: "Test" }
        }
        Grid {
            columns: 5
            spacing: 5

            ModuleText { text: "Canvas 3D" }
            ModuleText { text: "Charts" }
            ModuleText { text: "Data\nVisualization" }
            ModuleText { text: "Purchase" }
            ModuleText { text: "QtQuick 2D\nRenderer" }
            ModuleText { text: "Graphical Effects" }
            ModuleText { text: "NFC" }
            ModuleText { text: "Location" }
            ModuleText { text: "Qt 3D" }
            ModuleText { text: "Active Qt" }
            ModuleText { text: "X11,Windows,\nmacOS Extras" }
            ModuleText { text: "Android Extras" }
            ModuleText { text: "Print Support" }
            ModuleText { text: "Sensors" }
            ModuleText { text: "Concurrent" }
            ModuleText { text: "WebEngine" }
            ModuleText { text: "Image Formats" }
            ModuleText { text: "Positioning" }
            ModuleText { text: "Serial Port" }
            ModuleText { text: "Web Sockets" }
            ModuleText { text: "XML & XML\n Patterns" }
            ModuleText { text: "SVG" }
            ModuleText { text: "Bluetooth" }
            ModuleText { text: "D-Sub" }
            ModuleText { text: "WebChannel" }
            ModuleText { text: "Virtual\nKeyboard" }
        }
    }
}
