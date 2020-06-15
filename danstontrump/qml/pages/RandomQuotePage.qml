import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0

Page {
    id: page

    allowedOrientations: Orientation.All

    Quote {
        id: quote
        message: QuoteManager.getRandomQuote().message
    }

    Label {
        id: label
        anchors.top: parent.top
        x: Theme.horizontalPageMargin
        text: qsTr("Random Quote")
        color: Theme.secondaryHighlightColor
        font.pixelSize: Theme.fontSizeExtraLarge
    }

    TextArea {
        id: quoteMessage
        anchors.top: label.bottom
        anchors.verticalCenter: parent.verticalCenter
        wrapMode: TextEdit.Wrap
        width: 600
        readOnly: true
        text: quote.message
    }

    Button {
       id: randomGen
       anchors.top: quoteMessage.bottom
       text: "Random"
       onClicked: {
           quote.message = QuoteManager.getRandomQuote().message
       }
    }
}
