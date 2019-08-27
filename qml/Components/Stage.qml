import Qt3D.Core 2.0
import Qt3D.Input 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity {
    id: root

    property int idx:0

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        aspectRatio: 16 / 9
        nearPlane: 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 0.0, 2.0, 5.0 )
        upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    OrbitCameraController {
        camera: camera
    }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer {
                clearColor: Qt.rgba(1.0, 1.0, 1.0, 1.0)
                camera: camera
            }
        },
        InputSettings {}
    ]

    Cube {
        id: object
        idx: root.idx
    }

    PerVertexColorMaterial {
        id: material
    }

    Entity {
        components: [ object, material ]
    }
}
