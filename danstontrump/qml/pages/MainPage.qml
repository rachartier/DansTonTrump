import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaListView {
        anchors.fill: parent

        header: PageHeader {
            title: qsTr("DansTonTrump")
        }

        PullDownMenu {
            MenuItem {
                text: qsTr("Last Quotes")
                onClicked: pageStack.push(Qt.resolvedUrl("DetailQuotesPage.qml"))
            }
            MenuItem {
                text: qsTr("Random Quotes")
                onClicked: pageStack.push(Qt.resolvedUrl("RandomQuotePage.qml"))
            }
            MenuItem {
                text: qsTr("Personalized Quotes")
                onClicked: pageStack.push(Qt.resolvedUrl("PersonalizedQuotesPage.qml"))
            }
        }
    }
}
