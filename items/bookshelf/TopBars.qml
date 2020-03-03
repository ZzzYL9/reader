import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

ToolBar {

    height: 0.07*rootwindow.height
    width: rootwindow.width
    z:2
    signal doSearch(string searchText)

    RowLayout {
        id: searchBar
//        width: parent.width
//        height:parent.height
        spacing: 5

        Label {
            text: "Title"
//            elide: Label.ElideRight
//            horizontalAlignment: Qt.AlignHCenter
//            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

        ToolButton {
            id: searchButton
            iconSource:"qrc:/Images/shelf/search.png"
            onClicked: doSearch(searchText.text)
        }

        ToolButton {
            id: addButton
            iconSource:"qrc:/Images/shelf/add.png"
//            onClicked: menu.open()
        }




    }

}
