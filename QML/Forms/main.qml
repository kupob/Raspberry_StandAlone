import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import ".."

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Raspberry Pi 7\" touchscreen")

    ColumnLayout {
        spacing: 2;
        anchors.fill: parent;
        anchors.margins: Constants.smallMargin;

        HomeScreen {
            id: homeScreen
            Layout.fillHeight: true;
            Layout.fillWidth: true;
        }
    }

}
