import QtQuick 2.12
import loginui1 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    Text {
        text: qsTr("Qt Account")
        font.pointSize: 24
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Image {
        id: logo
        x: 39
        y: 55
        width: 100
        height: 100
        source: "qt_logo_green_64x64px.png"
        fillMode: Image.PreserveAspectFit
    }

    PushButton {
        id: loginButton
        x: 260
        y: 296
        width: 120
        height: 40
        text: qsTr("Log in")
    }

    PushButton {
        id: registerButton
        x: 260
        y: 348
        width: 120
        height: 40
        text: "Create Account"
    }
}
