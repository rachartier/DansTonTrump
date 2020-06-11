import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Label {
        id: label
        anchors.top: parent.top
        x: Theme.horizontalPageMargin
        text: qsTr("Personalized Quote")
        color: Theme.secondaryHighlightColor
        font.pixelSize: Theme.fontSizeExtraLarge
    }

    TextField {
        id: inputPerso

        width: 600
        anchors.top: label.bottom
        focus: true
        placeholderText: "Enter a name"
        label: "Name"
    }

    TextArea {
        anchors.top: inputPerso.bottom
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: TextEdit.Wrap
        width: 600
        readOnly: true
        text: inputPerso.text
    }




}
