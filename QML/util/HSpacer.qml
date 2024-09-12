import QtQuick 2.15

Item {
    property int thickness: 2
    property alias color: spacer.color
    property double coverage: 0.75

    anchors.left: parent.left
    anchors.right: parent.right
    height: thickness
    Rectangle {
        id: spacer
        width: parent.width * coverage
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#dddddd"
    }
}
