import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Label {
        id: label
        anchors.top: parent.top
        x: Theme.horizontalPageMargin
        text: qsTr("Random Quote")
        color: Theme.secondaryHighlightColor
        font.pixelSize: Theme.fontSizeExtraLarge
    }

    TextArea {
        id: quote
        anchors.top: label.bottom
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: TextEdit.Wrap
        width: 600
        readOnly: true
        text: "Quote random"
    }

    Button {
       id: randomGen
       anchors.top: quote.bottom
       text: "Random"
       onClicked: console.log("clicked!")
    }

}
