#! env qml

import QtQuick



Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Kestrel")
    Rectangle {
        id: top_bar
        width: parent.width
        height: 30
        x: 0
        y: 0
        z: 32
        color: "#444444"
        Rectangle {
            id: ribbon_pane
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color: "transparent"
            Rectangle {
                id: title
                width: title_text.implicitWidth
                anchors.horizontalCenter: parent.horizontalCenter
                Text {
                    id: title_text
                    text: "Kestrel"
                    color: "#cccccc"
                    font.pixelSize: 20;
                    font.family: "Jetbrains Mono";
                    Rectangle {
                        id: title_text_underline
                        width: parent.width - 4
                        x: 10
                        height: 2
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 2
                        color: "#f0830e"
                    }
                }
            }
        }
    }
    Rectangle {
        id: left_bar
        width: 300
        color: "#222222"
        x: 0
        anchors.top: top_bar.bottom
        anchors.bottom: parent.bottom
        Rectangle {
            id: month_pane
            x: 0
            y: 0
            width: parent.width
            height: 225
            color: "transparent"
        }
        Rectangle {
            id: calendars_pane
            anchors.top: month_pane.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            color: "#444444"
        }
    }
    Rectangle {
        id: main_space
        anchors.top: top_bar.bottom
        anchors.left: left_bar.right
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        color: "#666666"
    }
}


