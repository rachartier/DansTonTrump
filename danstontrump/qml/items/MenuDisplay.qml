import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    PullDownMenu {
        MenuItem {
            text: qsTr("Last Quotes")
            onClicked: pageStack.push(Qt.resolvedUrl("../pages/DetailQuotesPage.qml"))
        }
        MenuItem {
            text: qsTr("Random Quotes")
            onClicked: pageStack.push(Qt.resolvedUrl("../pages/RandomQuotePage.qml"))
        }
        MenuItem {
            text: qsTr("Personalized Quotes")
            onClicked: pageStack.push(Qt.resolvedUrl("../pages/PersonalizedQuotesPage.qml"))
        }
    }
}
