import QtQuick 2.15

Item {
    property int thickness: 2
    property alias color: spacer.color
    property double coverage: 0.75

    anchors.top: parent.top
    anchors.bottom: parent.bottom
    width: thickness
    Rectangle {
        id: spacer
        height: parent.height * coverage
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        color: "#dddddd"
    }
}
