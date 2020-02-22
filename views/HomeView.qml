import QtQuick 2.0
import QtQuick.Controls 2.5
import "../items/homepage"

Item {
    SearchBar {
        id:searchBar
        width: rootwindow.width

        //搜索事件响应
        onDoSearch: {
            if (searchText.length > 0){
                console.log(searchText)
            }
        }
    }

    CircleView {
        id: cirCleView

        model: ListModel {
            ListElement { picUrl: 'qrc:/images/homepage/switchimg/1.jpg' }
            ListElement { picUrl: 'qrc:/images/homepage/switchimg/2.jpg' }
            ListElement { picUrl: 'qrc:/images/homepage/switchimg/3.jpg' }
            ListElement { picUrl: 'qrc:/images/homepage/switchimg/4.jpg' }
            ListElement { picUrl: 'qrc:/images/homepage/switchimg/5.jpg' }
            ListElement { picUrl: 'qrc:/images/homepage/switchimg/6.jpg' }
        }

        delegate: Item {
            width: cirCleView.width
            height: cirCleView.height
            Image {
                anchors.fill: parent
                anchors.bottom: parent.bottom
                source: picUrl
            }
            MouseArea {
                anchors.fill: parent
                //轮播图点击后切换页面处理
                onClicked: {
                    console.log("处理图片"+picUrl)
                }
            }
        }


        onDraggingChanged: {
            if (dragging)
                timer.stop()
            else
                timer.start()
        }
    }

    PageIndicator {
        anchors.bottom: cirCleView.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        count: cirCleView.count
        currentIndex: cirCleView.currentIndex
    }

    Timer {
        id: timer
        running: true
        repeat: true
        interval: 1000
        onTriggered: cirCleView.currentIndex = (cirCleView.currentIndex + 1) % cirCleView.count
    }


}
