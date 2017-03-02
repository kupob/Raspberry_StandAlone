import QtQuick 2.0
import QtQuick.Controls 2.0
import ".."

Button {
    id: button;

    background: Rectangle {
        implicitWidth: 100;
        implicitHeight: 40;
        color: button.down ? "#e6e6e6" : "#fcfcfc";
        border.color: "#86888a";
        border.width: 1;
        radius: 5;
    }

    font.family: Constants.sansFontFamily;
    font.pointSize: Constants.bodyFontSize;
}
