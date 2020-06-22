import QtQuick 2.0
import QtQuick.Layouts 1.0
import Sailfish.Silica 1.0
import com.iut 1.0
import "../items"

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaItem{
        anchors.fill: parent

        Column{
            spacing: Theme.paddingLarge
            width: parent.width

            PageHeader{
                title: "Random Quote"
                id: header
            }

            Quote {
                id: quote
                message: QuoteManager.getRandomQuote().message
            }


            QuoteDisplay {
                width: parent.width

                id: quoteMessage
                text: quote.message
                anchors {
                            left: parent.left
                            right: parent.right
                            margins: Theme.paddingLarge
                        }
            }

            Button {
               id: randomGen
               text: "Random"
               onClicked: {
                   quote.message = QuoteManager.getRandomQuote().message
               }
               anchors {
                   left: parent.left
                   right: parent.right
                   margins: Theme.paddingLarge
               }
            }
        }
    }


}
