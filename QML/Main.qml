#! env qml

import QtQuick
import "../QML/title" as Local
import "../QML/month" as Local
import "../QML/calendars" as Local
import "../QML/util" as Util


Window {
    //ID
    id: window

    property color darkest: "#111111"
    property color darker: "#222222"
    property color dark: "#444444"
    property color light: "#bbbbbb"
    property color lighter: "#dddddd"
    property color lightest: "#eeeeee"
    property color orange: "#f0830e"
    property color red: "#d14503"
    property color yellow: "#ebee6c"
    property color blue: "#0ef0da"

    //Positioning

    //Color and Formatting
    color: darker

    //Component Specific
    visible: true
    title: qsTr("Kestrel")

    //SubComponents
    Rectangle {
        id: top_bar

        anchors.top: parent.top
        height: title.height + 10
        anchors.left: parent.left
        anchors.right: parent.right

        color: dark

        Row {
            id: left_top_row

            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            spacing: 10

            Local.Title {
                id: title

                anchors.verticalCenter: parent.verticalCenter

                textColor: lighter
                underlineColor: orange
                underlineStartOffset: 10
                underlineLengthOffset: -4
                underlineVerticalOffset: 2
                underlineThickness: 2

                text: "Kestrel"
            }
        }

        Row {
            id: right_top_row

            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            spacing: 10

            Local.Settings {
                id: settings

                anchors.bottom: parent.bottom
                anchors.bottomMargin: 7

                color: lighter
                font.pixelSize: 14;
            }
        }
    }
    Column {
        id: left_bar

        anchors.top: top_bar.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: childrenRect.width

        spacing: 10

        Local.Month {
            navigationTextColor: lighter
            navigationBackgroundColor: red
            textColor: lighter
        }

        Util.HSpacer {
            color: light
        }

        Local.Calendars {

        }
    }
    Util.VSpacer {
        id: left_spacer

        anchors.left: left_bar.right
        anchors.top: top_bar.bottom
        anchors.bottom: parent.bottom

        color: light
    }
    Column {
        id: right_bar

        anchors.top: top_bar.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: childrenRect.width

        spacing: 10
    }
    Item {
        id: compression_bar
        anchors.top: top_bar.bottom
        anchors.left: left_spacer.right
        anchors.right: right_bar.left
    }
    Item {
        id: footer_bar
        anchors.bottom: parent.bottom
        height: childrenRect.height
        anchors.left: left_spacer.right
        anchors.right: right_bar.left
    }

    Item {
        id: main_space
        anchors.top: compression_bar.bottom
        anchors.bottom: footer_bar.top
        anchors.left: left_spacer.right
        anchors.right: right_bar.left
        anchors.margins: 15
    }
}


