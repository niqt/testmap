import QtQuick 2.3
import QtQuick.Controls 1.2
import QtLocation 5.3
import QtPositioning 5.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Plugin {
        id: plugin
        preferred: [ "osm"]

    }
    Map{
        id: map
        anchors.fill: parent
        plugin: plugin

        center  {
            latitude: -27
            longitude: 153
        }
        zoomLevel: map.minimumZoomLevel


    }


}
