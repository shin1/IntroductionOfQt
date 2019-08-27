import QtQuick 2.12
import QtQuick.Scene3D 2.0
import QtQuick.Controls 2.0
import Qt.labs.presentation 1.0
import "Components"

Slide {
    title: qsTr("デモ（3D）")
    Item {
        width: halfWidth - 100
        height: width

        Scene3D {
            anchors.fill: parent
            focus: true
            aspects: ["input", "logic"]
            Stage {
                idx: slider.value
            }
        }

        Slider {
            id: slider
            width: parent.width
            from: 0
            to: 24
            stepSize: 1
            anchors.bottom: parent.bottom
        }
    }

    CodeSection {
        fontSize: 20
        text:
"import Qt3D.Render 2.0

GeometryRenderer{
    id: root
    primitiveType: GeometryRenderer.Lines

    property int idx

    Buffer {
        id: vertexBuffer
        type: Buffer.VertexBuffer
        data: getData()
    }

    geometry: Geometry{
        Attribute{
            name: defaultPositionAttributeName
            attributeType: Attribute.VertexAttribute
            vertexBaseType: Attribute.Float
            vertexSize: 3
            byteOffset: 0
            byteStride: 6 * 4
            count: root.idx
            buffer: vertexBuffer
        }
        Attribute{
            name: defaultColorAttributeName
            attributeType: Attribute.VertexAttribute
            vertexBaseType: Attribute.Float
            vertexSize: 3
            byteOffset: 3 * 4
            byteStride: 6 * 4
            count: root.idx
            buffer: vertexBuffer
        }
    }

    function getData() {
        var array = [
                 // x,  y,  z,   R,  G,  B
                 ...
                ];

        var position = new Float32Array(array.length);
        for (var i=0; i<array.length; i++) {
            position[i] = array[i];
        }
        return position;
    }

}"
   }
}
