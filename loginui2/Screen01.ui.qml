import QtQuick 2.12
import loginui2 1.0
import QtQuick.Controls 2.3

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height

    Rectangle {
        id: loginPage
        color: "#ffffff"
        anchors.fill: parent

        Image {
            id: logo
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            source: "qt_logo_green_64x64px.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: pageTitle
            x: 242
            text: qsTr("Qt Account")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 70
            font.pointSize: 24
            font.family: Constants.font.family
        }

        Column {
            id: fieldColumn
            x: 220
            width: 300
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 200
            spacing: 5

            TextField {
                id: usernameField
                width: 300
                text: qsTr("")
                placeholderText: qsTr("Username")
                opacity: 1
            }

            TextField {
                id: passwordField
                width: 300
                text: qsTr("")
                placeholderText: "Password"
            }
        }

        Column {
            id: buttonColumn
            x: 260
            y: 296
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            spacing: 5

            PushButton {
                id: loginButton
                width: 120
                height: 40
                text: qsTr("Log in")
            }

            PushButton {
                id: registerButton
                width: 120
                height: 40
                text: "Create Account"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

