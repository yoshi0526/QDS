import QtQuick 2.12
import AppFlow 1.0
import QtQuick.Controls 2.15

Item {
    width: Constants.width
    height: Constants.height

    Rectangle {
        id: rectangle
        color: "#e2f27b"
        anchors.fill: parent

        Button {
            id: to1Btn
            x: 81
            y: 414
            text: qsTr("Back to 1")
        }

        Button {
            id: to2Btn
            x: 396
            y: 414
            text: qsTr("Go to 2")
        }
    }
}
