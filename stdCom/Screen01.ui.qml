import QtQuick 2.12
import stdCom 1.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Timeline 1.0

Rectangle {
    id: rectangle

    width: Constants.width
    height: Constants.height
    property alias busyBtn: busyBtn

    property alias busyIndicator: busyIndicator
    property bool btnPressed: false
    //    signal onpressed

    //    property bool btnPressed: false
    Text {
        text: qsTr("Hello stdCom")
        anchors.verticalCenterOffset: -187
        anchors.horizontalCenterOffset: 188
        anchors.centerIn: parent
        font.family: Constants.font.family
        rotation: 360 * (slider.value - 0.5)
    }

    Slider {
        id: slider
        x: 413
        y: 82
        value: 0.5
    }

    Connections {
        target: busyBtn
        onClicked: {
            print("clicked")
            btnPressed = true
            slider.value = 0.5
            busyIndicator.visible = busyIndicator.visible == false ? true : false
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: 1000
                to: 1000
                from: 0
                running: true
                loops: 1
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 1000
    }

    Column {
        id: column
        x: 215
        y: 204
        width: 200
        height: 213
        spacing: 15

        BusyIndicator {
            id: busyIndicator
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            transformOrigin: Item.Center
        }

        Button {
            id: busyBtn
            text: qsTr("busyBtn")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:4}
}
##^##*/
