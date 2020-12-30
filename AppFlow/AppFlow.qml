import QtQuick 2.12
import AppFlow 1.0

Item {
    width: Constants.width
    height: Constants.height

    Screen01 {
        checkBox.onClicked: state="State1"
    }

}
