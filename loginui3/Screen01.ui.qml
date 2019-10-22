import QtQuick 2.12
import loginui3 1.0
import QtQuick.Controls 2.3

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    state: "loginState"

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
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24
            font.family: Constants.font.family
        }

        Column {
            id: fieldColumn
            x: 220
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

            TextField {
                id: veriyPasswordField
                width: 300
                text: qsTr("")
                placeholderText: "Verify Password"
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

        PushButton {
            id: backButton
            width: 40
            text: "<"
            font.pixelSize: 24
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 20
            spacing: 4
            focusPolicy: Qt.TabFocus
        }
    }

    Connections {
        target: registerButton
        onClicked: { root.state = "registerState" }
    }

    Connections {
        target: backButton
        onClicked: { root.state = "loginState" }
    }
    states: [
        State {
            name: "loginState"

            PropertyChanges {
                target: veriyPasswordField
                visible: false
            }

            PropertyChanges {
                target: backButton
                visible: false
            }
        },
        State {
            name: "registerState"

            PropertyChanges {
                target: loginButton
                visible: false
            }
        }
    ]
}



