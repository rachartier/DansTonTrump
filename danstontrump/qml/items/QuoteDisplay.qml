//contents of QuoteDisplay.qml
import QtQuick 2.0
import Sailfish.Silica 1.0

ListItem {
    property alias text: quoteLabel.text
    width:parent.width
    Label {
            id: quoteLabel
            width: parent.width
            wrapMode: Text.WordWrap
            color: Theme.lightPrimaryColor
            font.pixelSize: Theme.fontSizeSmall
            anchors {
                        left: parent.left
                        right: parent.right
                        margins: Theme.paddingLarge
                    }
    }
}
