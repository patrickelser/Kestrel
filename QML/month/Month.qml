#! env qml

import QtQuick
import "../util" as Util

Item {
    property string month: "September"
    property string year: "2024"
    property color navigationBackgroundColor: "#f0830e"
    property color navigationTextColor: "#222222"
    property color textColor: "#dddddd"

    width: 300
    height: 200

    Item {
        id: header

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 5
        anchors.right: parent.right
        height: navigation.height

        Rectangle {
            id: navigation

            anchors.top: parent.top
            anchors.topMargin: 5
            height: month_name.height
            anchors.left: parent.left
            anchors.right: parent.right

            color: navigationBackgroundColor

            Rectangle {
                id: month_left

                anchors.top: parent.top
                height: month_left_text.implicitHeight
                anchors.left: parent.left
                width: month_left_text.implicitWidth

                color: "transparent"

                Text {
                    id: month_left_text

                    color: navigationTextColor

                    padding: 5
                    text: "<"
                }
            }
            Rectangle {
                id: month_name

                anchors.top: parent.top
                height: month_name_text.implicitHeight
                anchors.left: month_left.right
                anchors.right: month_right.left

                color: "transparent"

                Text {
                    id: month_name_text

                    anchors.horizontalCenter: parent.horizontalCenter

                    padding: 5
                    color: navigationTextColor
                    text: month
                }
            }
            Rectangle {
                id: month_right

                anchors.top: parent.top
                height: month_right_text.implicitHeight
                anchors.right: month_year_spacer.left
                width: month_right_text.implicitWidth

                color: "transparent"

                Text {
                    id: month_right_text
                    padding: 5
                    color: navigationTextColor
                    text: ">"
                }
            }
            Util.VSpacer {
                id: month_year_spacer

                color: navigationTextColor
                anchors.right: year_left.left

                thickness: 1
            }
            Rectangle {
                id: year_left

                anchors.top: parent.top
                height: year_left_text.implicitHeight
                anchors.right: year_name.left
                width: year_left_text.implicitWidth

                color: "transparent"

                Text {
                    id: year_left_text
                    padding: 5
                    color: navigationTextColor
                    text: "<"
                }
            }
            Rectangle {
                id: year_name

                anchors.top: parent.top
                height: year_name_text.implicitHeight
                anchors.right: year_right.left
                width: year_name_text.implicitWidth

                color: "transparent"

                Text {
                    id: year_name_text
                    padding: 5
                    color: navigationTextColor
                    text: year
                }
            }
            Rectangle {
                id: year_right

                anchors.top: parent.top
                height: year_right_text.implicitHeight
                anchors.right: parent.right
                width: year_right_text.implicitWidth

                color: "transparent"

                Text {
                    id: year_right_text
                    padding: 5
                    color: navigationTextColor
                    text: ">"
                }
            }
        }
        // Content
    }
}
