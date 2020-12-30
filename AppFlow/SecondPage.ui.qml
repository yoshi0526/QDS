import QtQuick 2.12
import AppFlow 1.0
import QtQuick.Controls 2.15

Item {
    id: root
    width: Constants.width
    height: Constants.height

    Rectangle {
        id: rectangle
        color: "#f29d9d"
        anchors.fill: parent

        Button {
            id: button
            x: 286
            y: 394
            text: qsTr("back to 1")
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:1}
}
##^##*/
