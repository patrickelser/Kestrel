import QtQuick

Item {
    property alias color: settings_button.color
    property alias font: settings_button.font
    implicitWidth: settings_button.implicitWidth
    implicitHeight: settings_button.implicitHeight
    Text {
        id: settings_button
        anchors.fill: parent
        text: ""
    }
}
