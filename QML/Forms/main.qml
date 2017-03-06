import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import ".."

Window {
    visible: true;
    width: 640;
    height: 366;
    minimumWidth: 400;
    minimumHeight: 245;
    title: qsTr("Raspberry Pi 7\" touchscreen")

    ColumnLayout {
        spacing: 2;
        anchors.fill: parent;
        anchors.margins: 0;

        HomeScreen {
            id: homeScreen;
            Layout.fillHeight: true;
            Layout.fillWidth: true;
        }
    }

}
