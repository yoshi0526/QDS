import QtQuick 2.12
import AppFlow 1.0
import FlowView 1.0

FlowItem {
    width: Constants.width
    height: Constants.height

    Rectangle {
        id: rectangle1
        x: 8
        y: 0
        width: 632
        height: 461
        color: "#4c4545"

        Rectangle {
            id: rectangle
            x: 415
            y: 185
            width: 200
            height: 110
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ffffff"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }
        }

        Image {
            id: image
            x: 48
            y: 92
            width: 328
            height: 238
            source: "aasample.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/

