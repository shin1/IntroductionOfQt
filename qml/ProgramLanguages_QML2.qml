import QtQuick 2.12
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("QML（C++と連携）")

    CodeSection {
        anchors.fill: parent
        text:
"class MyClass : public QObject {
    Q_OBJECT
    Q_PROPERTY(int size READ size WRITE setSise NOTIFY sizeChanged)
public:
    Q_INVOKABLE void execute();

    void setSize(QSize size);
    QSize size() const;
};
--------------
void main() {

    ...
    MyClass myClass;
    engine.rootContext()->setContextProperty(\"myClass\", &myClass);
}
--------------

MyQML {
  Button {
    onClicked: {
      myClass.execute()
    }
  }
}

"
    }
}
