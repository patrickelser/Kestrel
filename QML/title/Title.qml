#! env qml

import QtQuick

Item {
    property alias text: text.text
    property alias textColor: text.color
    property alias underlineColor: underline.color
    property alias font: text.font

    property alias underlineStartOffset: underline.startOffset
    property alias underlineLengthOffset: underline.lengthOffset
    property alias underlineThickness: underline.height
    property alias underlineVerticalOffset: underline.vertOffset

    implicitHeight: text.implicitHeight
    implicitWidth: text.implicitWidth + 6
    Text {
        id: text

        anchors.margins: 5
        font { pixelSize: 20; family: "Jetbrains Mono"; }
    }

    Rectangle {
        id: underline

        property int startOffset: 10
        property int lengthOffset: -4
        property int vertOffset: -2

        anchors.left: text.left
        anchors.leftMargin: startOffset
        width: text.implicitWidth + lengthOffset
        height: 2
        anchors.bottom: text.bottom
        anchors.bottomMargin: vertOffset
    }
}
