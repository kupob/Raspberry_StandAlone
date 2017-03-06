import QtQuick 2.0
import QtQuick.Controls 2.0
import "."
import ".."

Item {
    id: control
    width: parent.width
    height: 50

    signal backButtonClicked;

    property int margin: 5
    property alias color: background.color
    property alias text: title.text
    property bool raised: false

    MouseArea {
        id: eventEater
        anchors.fill: parent
    }

//    PaperShadow {
//        source: background
//        depth: control.raised ? 2 : 1
//    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: "white"
    }

    RoundedButton {
        text: "Back";
        x: margin;
        y: margin;
        z: 10;
        width: 60;
        height: parent.height - margin * 2;

        onClicked: control.backButtonClicked();
    }

    Text {
        id: title
        x: 72
        anchors.verticalCenter: parent.verticalCenter
        font.family: Constants.sansFontFamily
        font.bold: Font.DemiBold
        font.pointSize: Constants.titleFontSize
        color: "grey"
    }
}
