import QtQuick
import QtQuick.Controls

Window {
    id: main
    width: 1920
    height: 2000
    visible: true
    title: qsTr("PortFolio")

    StackView
    {
        id: loader
        anchors.fill: parent
        initialItem: "qrc:/WEBSITE/home.qml"
    }
}
