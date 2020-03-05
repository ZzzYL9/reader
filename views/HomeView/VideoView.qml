import QtQuick 2.0
import QtMultimedia 5.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.0

Item {
    Rectangle{
        id:videorec
//        anchors.top: gridviews.bottom
        color: "grey"
        width: videoview.width
        height: videoview.height
    }
}
