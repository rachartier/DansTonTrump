import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Quote {
        id: quote
    }

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
        id: textArea
        anchors.top: inputPerso.bottom
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: TextEdit.Wrap
        width: 600
        readOnly: true
        text: quote.message
    }


    Button {
        anchors.top: textArea.bottom
        text: "Get custom quote"
        onClicked: {
            quote.message = QuoteManager.getPersonalizedQuote(inputPerso.text).message
        }
    }

}
