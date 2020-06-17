import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0
import "../items"

Page {
    id: page
    allowedOrientations: Orientation.All


    Quote {
        id: quote
        message: QuoteManager.getRandomQuote().message
    }

    Column {
        anchors.fill: parent
        spacing: 50

        Title {
            text: qsTr("Random Quote")
        }

        QuoteDisplay {
            width: parent.width

            id: quoteMessage
            text: quote.message
        }

        Button {
           id: randomGen
           text: "Random"
           onClicked: {
               quote.message = QuoteManager.getRandomQuote().message
           }
        }
    }
}
