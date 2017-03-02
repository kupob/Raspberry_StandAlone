pragma Singleton
import QtQuick 2.0

QtObject {

    readonly property string sansFontFamily: "Roboto"
    readonly property string serifFontFamily: "Roboto Slab"

    readonly property real captionFontSize: 10
    readonly property real bodyFontSize: 12
    readonly property real subheadFontSize: 14
    readonly property real titleFontSize: 16
    readonly property real headlineFontSize: 22
    readonly property real display1FontSize: 32
    readonly property real display2FontSize: 40
    readonly property real display3FontSize: 50
    readonly property real display4FontSize: 100

    readonly property color displayTextColor: "#8a000000"
    readonly property color bodyTextColor: "#de000000"

    readonly property real largeMargin: 16
    readonly property real smallMargin: 8

}
