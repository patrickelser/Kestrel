#! env qml

import QtQuick



Window {
    visible: true
    title: qsTr("Kestrel")
    color: "#222222"
    Rectangle {
        id: top_bar
        anchors.top: parent.top
        height: title.height + 10
        anchors.left: parent.left
        anchors.right: parent.right
        color: "#333333"
        Item {
            id: ribbon_pane
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            clip: true
            Item {
                id: title
                anchors.verticalCenter: parent.verticalCenter
                height: title_text.implicitHeight
                anchors.left: parent.left
                anchors.leftMargin: 20
                Text {
                    id: title_text
                    anchors.margins: 5
                    color: "#dddddd"
                    font { pixelSize: 20; family: "Jetbrains Mono"; }
                    text: "Kestrel"
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
            Text {
                id: settings_button
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 20
                color: "#dddddd"
                font.pixelSize: 14
                text: ""
            }
        }
    }
    Item {
        id: left_bar
        anchors.top: top_bar.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: childrenRect.width
        anchors.margins: 15
        Rectangle {
            id: month_pane
            anchors.top: parent.top
            height: 225
            anchors.left: parent.left
            width: 300
            radius: 10
            clip: true
            color: "#444444"
            Item {
                id: month_header
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.left: parent.left
                anchors.right: parent.right
                Item {
                    id: month_navigation
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    anchors.horizontalCenter: parent.horizontalCenter
                    Rectangle {
                        id: month_left
                        anchors.top: parent.top
                        height: month_left_text.implicitHeight
                        anchors.right: month_name.left
                        width: month_left_text.implicitWidth
                        topLeftRadius: 10
                        bottomLeftRadius: 10
                        color: "#f0830e"
                        Text {
                            id: month_left_text
                            padding: 5
                            color: "#222222"
                            text: "<"
                        }
                    }
                    Rectangle {
                        id: month_name
                        anchors.top: parent.top
                        height: month_name_text.implicitHeight
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: month_name_text.implicitWidth
                        color: "#f0830e"
                        Text {
                            id: month_name_text
                            padding: 5
                            color: "#222222"
                            text: "August"
                        }
                    }
                    Rectangle {
                        id: month_right
                        anchors.top: parent.top
                        height: month_right_text.implicitHeight
                        anchors.left: month_name.right
                        width: month_right_text.implicitWidth
                        topRightRadius: 10
                        bottomRightRadius: 10
                        color: "#f0830e"
                        Text {
                            id: month_right_text
                            padding: 5
                            color: "#222222"
                            text: ">"
                        }
                    }
                }
                Text {
                    id: month_year
                    anchors.top: parent.top
                    anchors.topMargin: 5
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    padding: 5
                    color: "#dddddd"
                    text: "2024"
                }
            }
        }
        Rectangle {
            id: calendars_pane
            anchors.top: month_pane.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 15
            radius: 10
            color: "#333333"
        }
    }
    Item {
        id: right_bar
        anchors.top: top_bar.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: childrenRect.width
        anchors.margins: 15
    }
    Item {
        id: compression_bar
        anchors.top: top_bar.bottom
        anchors.left: left_bar.right
        anchors.right: right_bar.left
    }
    Item {
        id: footer_bar
        anchors.bottom: parent.bottom
        height: childrenRect.height
        anchors.left: left_bar.right
        anchors.right: right_bar.left
    }

    Item {
        id: main_space
        anchors.top: compression_bar.bottom
        anchors.bottom: footer_bar.top
        anchors.left: left_bar.right
        anchors.right: right_bar.left
        anchors.margins: 15
    }
}


