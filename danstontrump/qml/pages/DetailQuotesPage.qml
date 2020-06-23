import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0

import "../items"
import QtQuick.Layouts 1.1

Page {
    id: page
    allowedOrientations: Orientation.All


    SilicaListView {
        anchors.fill: parent

        spacing: 20

        model: QuoteManager.getQuotes()

        delegate: QuoteDisplay {
            text: modelData.message
        }
    }
}
