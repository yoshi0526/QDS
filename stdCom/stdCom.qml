import QtQuick 2.12
import stdCom 1.0

Item {
    width: Constants.width
    height: Constants.height

    Screen01 {
        id:screen01
        Connections {
            target: screen01.button
            onClicked: {
                screen01.color = Qt.colorEqual(Constants.backgroundColor, screen01.color) ? "skyblue" : Constants.backgroundColor
                timer.restart()
            }
        }
    }

    Timer {
        id:timer
        running: false
        repeat: false
        interval: 1000
        onTriggered: {
            console.log("timer trig")
            screen01.busyIndicator.visible=true
            screen01.btnPressed=false
        }
    }

}
