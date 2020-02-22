import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

ToolBar {

    signal doSearch(string searchText)

    RowLayout {
        id: searchBar
        width: parent.width
        height:parent.height
//        Behavior
        TextField {
            id: searchText
            placeholderText: qsTr("输入书籍名称...")
            Layout.fillWidth: true
            onAccepted: doSearch(searchText.text)
        }
        ToolButton {
            id: searchButton
            iconSource:"qrc:/images/homepage/search.png"
            onClicked: doSearch(searchText.text)
        }
    }

}
