import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    property alias text: label.text

    height: 100

    Label {
        id: label
        anchors.top: parent.top
        x: Theme.horizontalPageMargin
        color: Theme.secondaryHighlightColor
        font.pixelSize: Theme.fontSizeExtraLarge
    }
}
