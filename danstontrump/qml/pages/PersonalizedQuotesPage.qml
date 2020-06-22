import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0

import "../items"

Page {
    id: page
    allowedOrientations: Orientation.All

    Quote {
        id: quote
    }

    SilicaItem{
        anchors.fill: parent
        Column {
            spacing: Theme.paddingLarge
            width: parent.width

            PageHeader {
                title: "Personalized Quote"
                id: header
            }

            TextField {
                id: inputPerso

                width: parent.width
                focus: true
                placeholderText: "Enter a name"
                label: "Name"

                anchors {
                            left: parent.left
                            right: parent.right
                            margins: Theme.paddingLarge
                        }
            }

            QuoteDisplay {
                width: parent.width
                text: quote.message
            }


            Button {
                anchors.top: textArea.bottom
                text: "Get custom quote"
                onClicked: {
                    quote.message = QuoteManager.getPersonalizedQuote(inputPerso.text).message
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
