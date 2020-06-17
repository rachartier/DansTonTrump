//contents of QuoteDisplay.qml
import QtQuick 2.0
import Sailfish.Silica 1.0

ListItem {
    property alias text: quoteLabel.text

    Column {
        spacing: 10

        Label {
            anchors.fill: parent
            anchors.centerIn: parent

            id: quoteLabel

            wrapMode: Text.WordWrap
            color: Theme.lightPrimaryColor
            font.pixelSize: Theme.fontSizeSmall
        }

        Rectangle {
            height: 1
            color: "#e0e0e0"
        }
    }
}
