import QtQuick 2

Window {
    color: "red"
    height: 500
    title: qsTr("Hello World!")
    visible: true
    width: 700

    Rectangle {
        color: "blue"
        height: 300
        width: 500

        Image {
            anchors.fill: parent
            source: "qrc:/res/img/logo.png"
            sourceSize.height: 300
            sourceSize.width: 500
        }
    }
}
