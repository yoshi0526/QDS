import QtQuick 2.12
import stdCom 1.0
import QtQuick.Controls 2.3

Rectangle {

    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor

    property alias busyIndicator: busyIndicator
    property alias button: button
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

    Button {
        id: button
        x: 107
        y: 97
        text: qsTr("Button")
    }

    Slider {
        id: slider
        x: 112
        y: 249
        value: 0.5
    }

    BusyIndicator {
        id: busyIndicator
        x: 399
        y: 145
    }

    Connections {
        target: button
        onClicked: {
            print("clicked")
            btnPressed = true
            slider.value = 0.5
            busyIndicator.visible = false
        }
    }
}
