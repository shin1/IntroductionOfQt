import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("Python")

    content: [
        "最近、正式に Python で Qt プログラミングができるようになりました",
        "Python における Qt の実装は以下の2つ",
        " PyQt",
        " PySide 2 <-- こっち",
    ]
    contentWidth: halfWidth

    CodeSection {
        text:
"import sys
from PySide2.QtWidgets import QApplication, QLabel

if __name__ == \"__main__\":
    app = QApplication(sys.argv)
    label = QLabel(\"Hello World\")
    label.show()
    sys.exit(app.exec_())
    return app.exec();
}"
    }
}
