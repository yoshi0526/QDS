import QtQuick 2.12
import AppFlow 1.0
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#fefcfc"
    property alias checkBox: checkBox


    Button {
        id: to2Btn
        x: 493
        y: 412
        text: qsTr("Go to 2")
    }

    Button {
        id: to3Btn
        x: 381
        y: 412
        text: qsTr("Go to 3")
    }

    Dial {
        id: dial
        x: 98
        y: 124
        visible: false
    }

    CheckBox {
        id: checkBox
        x: 391
        y: 57
        width: 80
        height: 40

    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: dial
                visible: true
            }
        }
    ]

}
