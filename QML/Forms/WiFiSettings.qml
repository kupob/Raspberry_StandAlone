import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import "../Primitives"
import ".."

SlidingForm {
    id: wifiSettings;

    ColumnLayout {
        x: 0;
        y: browser.topMargin;
        width: parent.width;
        //        anchors.fill: true;
        spacing: Constants.smallMargin;

        Rectangle {
            id: settings;
            Layout.fillHeight: true;
            Layout.fillWidth: true;
            color: "white";

            Text {
                id: text1;
                anchors.left: settings.left;
                anchors.leftMargin: 50;
                anchors.top: settings.top;
                anchors.topMargin: 100;
                text: qsTr("Wi-Fi");
                font.family: Constants.sansFontFamily;
                font.pointSize: Constants.bodyFontSize;
            }
            Text {
                id: text2;
                anchors.left: text1.left;
                anchors.top: text1.bottom;
                text: qsTr("To see available networks, turn Wi-Fi on");
                font.family: Constants.sansFontFamily;
                font.pointSize: Constants.captionFontSize;
            }

            Switch {
                id: switch1;
                anchors.right: settings.right;
                anchors.rightMargin: 50;
                anchors.top: text1.top;
                scale: 0.8;
            }
        }
    }
}
