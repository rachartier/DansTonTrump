//contents of QuoteDisplay.qml
import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    property alias text: quoteLabel.text

    width: parent.width
    height: border.height

    Rectangle {
        id: border
        width: parent.width
        height: plain.height

        color: "transparent"

        Rectangle {
            id: plain
            radius: 8
            border.width: 6
            border.color: plain.color

            color: "#41413e"

            anchors.centerIn: border

            width: parent.width * 0.90
            height: quoteLabel.height * 1.2

            Label {
                id: quoteLabel

                width: parent.width * 0.90

                anchors.centerIn: plain

                wrapMode: Text.WordWrap
                color: "#cfcfc4"
                font.pixelSize: Theme.fontSizeSmall
            }
        }
    }
}
