import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import "items"
import "views"

ApplicationWindow {
    id: rootwindow
    visible: true
    width:400
    height: 600
    title: qsTr("Qml底部导航")


    SwipeView {
        id: swipeview
        height: rootwindow.height - bar.height
        width: parent.width
        currentIndex: bar.currentIndex

//        Rectangle{
        HomeView{}
//            Text {
//                text: qsTr("首页")
//                anchors.centerIn: parent
//            }
//        }
        Rectangle{
            Text {
                text: qsTr("书架")
                anchors.centerIn: parent
            }
        }
        Rectangle{
            Text {
                text: qsTr("分析")
                anchors.centerIn: parent
            }
        }
        Rectangle{
            Text {
                text: qsTr("我的")
                anchors.centerIn: parent
            }
        }
    }

    footer: BaseTabBar{
        id: bar
        height: 0.09*parent.height
        width: parent.width
        currentIndex: swipeview.currentIndex
        Component.onCompleted: {
            myModel.append({ "modelText": "首页", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/images/guide/homepage.png", "modelSrcG": "qrc:/images/guide/homepage_after.png"})
            myModel.append({ "modelText": "书架", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/images/guide/books.png", "modelSrcG": "qrc:/images/guide/books_after.png"})
            myModel.append({ "modelText": "分析", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/images/guide/analogy.png", "modelSrcG": "qrc:/images/guide/analogy_after.png"})
            myModel.append({ "modelText": "我的", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/images/guide/me.png", "modelSrcG": "qrc:/images/guide/me_after.png"})
        }
    }
}
