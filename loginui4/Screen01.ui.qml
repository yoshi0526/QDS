import QtQuick 2.12
import loginui4 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0

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
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24
            font.family: Constants.font.family
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
                opacity: 1
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

    TextField {
        id: veriyPasswordField
        x: 170
        width: 300
        text: qsTr("")
        anchors.horizontalCenter: passwordField.horizontalCenter
        anchors.top: passwordField.bottom
        anchors.topMargin: 5
        placeholderText: "Verify Password"
    }

    TextField {
        id: passwordField
        x: 170
        width: 300
        text: qsTr("")
        anchors.horizontalCenter: usernameField.horizontalCenter
        anchors.top: usernameField.bottom
        anchors.topMargin: 5
        placeholderText: "Password"
    }

    TextField {
        id: usernameField
        x: 170
        width: 300
        text: qsTr("")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 200
        placeholderText: qsTr("Username")
        opacity: 1
    }

    Connections {
        target: registerButton
        onClicked: {
            root.state = "registerState"
        }
    }

    Connections {
        target: backButton
        onClicked: {
            root.state = "loginState"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: toLoginState
                duration: 1000
                running: false
                from: 0
                loops: 1
                to: 1000
            },
            TimelineAnimation {
                id: toRegisterState
                duration: 1000
                running: false
                from: 1000
                loops: 1
                to: 0
            }
        ]
        enabled: true
        endFrame: 1000
        startFrame: 0

        KeyframeGroup {
            target: backButton
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: veriyPasswordField
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 1000
            }
        }

        KeyframeGroup {
            target: loginButton
            property: "opacity"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                value: 0
                frame: 1000
            }
        }

        KeyframeGroup {
            target: veriyPasswordField
            property: "anchors.topMargin"
            Keyframe {
                value: -40
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 5
                frame: 1000
            }
        }
    }
    states: [
        State {
            name: "loginState"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: toRegisterState
                running: true
            }
        },
        State {
            name: "registerState"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: toLoginState
                running: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:5;timeline_expanded:true}D{i:7;timeline_expanded:true}D{i:8;anchors_y:245;timeline_expanded:true}
D{i:9;anchors_y:290}D{i:10;anchors_y:200}
}
##^##*/

