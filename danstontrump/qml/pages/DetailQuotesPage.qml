import QtQuick 2.0
import Sailfish.Silica 1.0
import com.iut 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaListView {
        id: listView
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Last Quotes")
        }

        /*
        model: ListModel{
            ListElement { content: "quote 1" }
            ListElement { content: "quote 2" }
            ListElement { content: "quote 3" }
            ListElement { content: "quote 4" }
        }
        */

        /*
        delegate: ListItem {
            id: delegate

            TextArea {
                x: Theme.horizontalPageMargin
                readOnly: true
                text: content
                anchors.verticalCenter: parent.verticalCenter
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            onClicked: console.log("Clicked " + index)
        }
        VerticalScrollDecorator {}
        */

        Button {
            text: "hello"
            onClicked: {
                console.log(QuoteManager.getQuotes())
            }
        }


        Column{
            y: 50
            x: 50

            Repeater {
                model: QuoteManager.getQuotes()

                Text {
                    height: 20
                    text: modelData["message"]
                    color: "#FFFFFF"
                }

            }
        }
    }
}
