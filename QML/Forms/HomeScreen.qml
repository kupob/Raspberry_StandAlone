import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQml 2.2
import QtQuick.Controls 2.0
import "../Primitives"
import ".."

Rectangle {
    anchors.fill: parent;
    color: "#f4f4f4";
    radius: 5;

    RowLayout {
        id: buttonArea;
        spacing: Constants.smallMargin;
        anchors.fill: parent;

        ScrollButton {
            id: scrollLeftButton;
            Layout.fillHeight: true;
            text: "<";
            onPressed: flickable.flick(1000, 0);
        }

        Flickable {
            id: flickable;
            Layout.fillHeight: true;
            Layout.fillWidth: true;

            property int itemsWidth : (height - Constants.largeMargin) / 2;

            contentWidth: (itemsWidth + Constants.largeMargin) * 5;

            clip: true;

            RowLayout {
                anchors.fill: parent;


                GridLayout {
                    id: gridLayout;
                    anchors.fill: parent;
                    columnSpacing: Constants.smallMargin;
                    rowSpacing: Constants.smallMargin;
                    columns: 4;
                    rows: 2;

                    Layout.fillHeight: true;

                    RoundedButton {
                        id: buttonBrowse;
                        text: "Visit site";
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;

                        onClicked: browser.shown = true;
                    }

                    RoundedButton {
                        id: buttonWiFi;
                        text: "Wi-Fi settings";
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;

                        onClicked: wifiSettings.shown = true;
                    }

                    RoundedButton {
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;
                    }

                    RoundedButton {
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;
                    }

                    RoundedButton {
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;
                    }

                    RoundedButton {
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;
                    }

                    RoundedButton {
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;
                    }

                    RoundedButton {
                        id: buttonQuit;
                        text: "Exit";
                        Layout.fillHeight: true;
                        Layout.minimumWidth: flickable.itemsWidth;
                        Layout.maximumWidth: flickable.itemsWidth;

                        onClicked: Qt.quit();
                    }
                }

                Rectangle {
                    id: spacer2;
                    Layout.fillHeight: true;
                    Layout.fillWidth: true;
                }

            }
        }

        ScrollButton {
            id: scrollRightButton;
            Layout.fillHeight: true;
            text: ">";
            onPressed: flickable.flick(-1000, 0);
        }
    }

    Browser {
        id: browser;
        finalX: buttonArea.x;
        startX: buttonArea.x + buttonArea.width;
        title: "Browser";

        x: buttonArea.x;
        y: buttonArea.y;
        z: 10;
        shown: false;
        width: buttonArea.width;
        height: buttonArea.height;
    }

    WiFiSettings {
        id: wifiSettings;
        finalX: buttonArea.x;
        startX: buttonArea.x + buttonArea.width;
        title: "Wi-Fi settings";

        x: buttonArea.x;
        y: buttonArea.y;
        z: 10;
        shown: false;
        width: buttonArea.width;
        height: buttonArea.height;
    }
}
