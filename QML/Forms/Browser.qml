import QtQuick 2.0
import QtQuick.Layouts 1.1
import "../Primitives"
import ".."

SlidingForm {
    id: browser;
    property string urlString : "https://freeboard.io/board/G6qZxn";

    ColumnLayout {
        x: 0;
        y: browser.topMargin;
        width: parent.width;
        height: parent.height - browser.topMargin;
//        anchors.fill: true;
        spacing: Constants.smallMargin;

        Rectangle {
            Layout.fillHeight: true;
            Layout.fillWidth: true;
            color: "white";
        }
    }
}
