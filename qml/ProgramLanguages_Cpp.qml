import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("C++")

    content: [
        "C++-11がベースです",
        " Qt 独自のコレクションもありますが、STL も使えます",
        "Signal/Slot、プロパティ、実行時型情報 など C++ 言語に対して多くの拡張を行なっています",
        " 最近では C++ がそれらの機能を実現していますが...",
    ]
    contentWidth: halfWidth

    CodeSection {
        text:
"#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QLabel label(\"Hello World\");
    label.show();

    return app.exec();
}"
    }
}
