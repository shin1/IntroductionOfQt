import Qt3D.Render 2.0

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
                    1,  1,  1,   1,  0,  0,
                    1,  1, -1,   1,  0,  0,
                    1,  1,  1,   1,  0,  0,
                   -1,  1,  1,   1,  0,  0,

                   -1,  1,  1,   1,  0,  0,
                   -1,  1, -1,   1,  0,  0,
                    1,  1, -1,   1,  0,  0,
                   -1,  1, -1,   1,  0,  0,

                    1, -1,  1,   0,  1,  0,
                    1, -1, -1,   0,  1,  0,
                    1, -1,  1,   0,  1,  0,
                   -1, -1,  1,   0,  1,  0,

                   -1, -1,  1,   0,  1,  0,
                   -1, -1, -1,   0,  1,  0,
                    1, -1, -1,   0,  1,  0,
                   -1, -1, -1,   0,  1,  0,

                    1,  1,  1,   0,  0,  1,
                    1, -1,  1,   0,  0,  1,
                   -1,  1,  1,   0,  0,  1,
                   -1, -1,  1,   0,  0,  1,

                   -1,  1, -1,   0,  0,  1,
                   -1, -1, -1,   0,  0,  1,
                    1,  1, -1,   0,  0,  1,
                    1, -1, -1,   0,  0,  1,
                ];

        var position = new Float32Array(array.length);
        for (var i=0; i<array.length; i++) {
            position[i] = array[i];
        }
        return position;
    }

}
