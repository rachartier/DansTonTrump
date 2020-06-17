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

    Column {
        Title {
            text: qsTr("Personalized Quote")
        }

        TextField {
            id: inputPerso

            width: 600
            anchors.top: label.bottom
            focus: true
            placeholderText: "Enter a name"
            label: "Name"
        }

        QuoteDisplay {
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

}
