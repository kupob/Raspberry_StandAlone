import QtQuick 2.7
import ".."

Rectangle {
    id: slidingForm;
    color: "#f4f4f4";
    opacity: 0;

    property bool shown;
    property int topMargin: actionBar.height + Constants.smallMargin;
    property alias title: actionBar.text;
    property int finalX;
    property int finalY;
    property int startX;
    property int startY;

    visible: opacity > 0;

    states: [
        State {
            name: "normal";
            when: shown == true;
            PropertyChanges { target: slidingForm; x: slidingForm.finalX; }
            PropertyChanges { target: slidingForm; opacity: 1; }
        },
        State {
            name: "hidden";
            when: shown == false;
            PropertyChanges { target: slidingForm; x: slidingForm.startX; }
            PropertyChanges { target: slidingForm; opacity: 0; }
        }
    ]

    transitions: Transition {
            NumberAnimation {
                property: "x";
                duration: 500;
                easing.type: Easing.InOutExpo;
            }

            NumberAnimation {
                target: slidingForm;
                property: "opacity";
                duration: 100;
                easing.type: Easing.InOutExpo;
            }
    }

    ActionBar {
        id: actionBar;
        x: 0;
        y: 0;
        onBackButtonClicked: slidingForm.shown = false;
    }
}
