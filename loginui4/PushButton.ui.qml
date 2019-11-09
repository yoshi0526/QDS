import QtQuick 2.10
import QtQuick.Templates 2.1 as T
import loginui4 1.0

T.Button {
    id: control

    font: Constants.font
    implicitWidth: Math.max(
                       background ? background.implicitWidth : 0,
                       contentItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        background ? background.implicitHeight : 0,
                        contentItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    text: "My Button"

    background: Rectangle {
        id: buttonBackground
        color: "#41cd52"
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        border.color: "#21be2b"
        border.width: 1
        radius: 6
    }

    contentItem: Text {
        id: textItem
        text: control.text

        opacity: enabled ? 1.0 : 0.3
        color: "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    states: [
        State {
            name: "normal"
            when: !control.down
            PropertyChanges {
                target: buttonBackground
            }
        },
        State {
            name: "down"
            when: control.down
            PropertyChanges {
                target: textItem
                color: "white"
            }
            PropertyChanges {
                target: buttonBackground
                color: Qt.darker("#41cd52", 1.2)
                border.color: Qt.darker("#21be2b", 1.2)
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:40;width:120}
}
##^##*/

