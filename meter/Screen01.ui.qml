import QtQuick 2.12
import meter 1.0
import QtQuick.Controls 2.3
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: 640

    color: Constants.backgroundColor
    property alias rpmFrame: timeline.currentFrame
    visible: true

    Item {
        id: element
        x: 239
        y: 159
        width: 200
        height: 200
        rotation: 300

        TriangleItem {
            id: triangle
            x: 87
            y: -74
            width: 26
            height: 46
            visible: true
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: -1
                running: false
                from: 0
                to: 1000
                duration: 2000
            }
        ]
        endFrame: 1000
        startFrame: 0
        enabled: true

        KeyframeGroup {
            target: element
            property: "rotation"
            Keyframe {
                value: 200
                frame: 0
            }

            Keyframe {
                value: 300
                frame: 1000
            }
        }

        KeyframeGroup {
            target: arc
            property: "end"
            Keyframe {
                value: 300
                frame: 1000
            }

            Keyframe {
                value: 200
                frame: 0
            }
        }

        KeyframeGroup {
            target: arc
            property: "strokeColor"
            Keyframe {
                value: "#c1d6e5"
                frame: 0
            }

            Keyframe {
                value: "#c1d6e5"
                frame: 399
            }

            Keyframe {
                value: "#d9e39c"
                frame: 400
            }

            Keyframe {
                value: "#d9e39c"
                frame: 698
            }

            Keyframe {
                value: "#e42401"
                frame: 699
            }

            Keyframe {
                value: "#e42401"
                frame: 1000
            }
        }
    }

    ArcItem {
        id: arc
        x: 132
        y: 64
        width: 396
        height: 407
        anchors.horizontalCenter: element.horizontalCenter
        anchors.verticalCenter: element.verticalCenter
        strokeColor: "#ff0000"
        strokeWidth: 35
        end: 300
        begin: 200
        fillColor: "#00000000"
    }
}

/*##^##
Designer {
    D{i:0;timeline_expanded:true}D{i:1;timeline_expanded:true}D{i:3}D{i:18;timeline_expanded:true}
}
##^##*/

