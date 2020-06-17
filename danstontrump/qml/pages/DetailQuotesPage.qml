import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0

import "../items"
import QtQuick.Layouts 1.1

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        Title {
            text: qsTr("All Quotes")
        }

        SilicaListView {
            anchors.fill: parent

            model: QuoteManager.getQuotes()

            delegate: QuoteDisplay {
                width: parent.width
                height: Theme.itemSizeSmall

                text: message

                Component.onCompleted : {
                    console.log(message)
                }
            }
        }
    }
}
