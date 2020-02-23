import QtQuick 2.0
import QtQuick.Controls 2.5
import "../items/homepage"
import "../forms"

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

//轮播
//***************************************
    CircleView {
        id: cirCleView
        anchors.topMargin: 5
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
        //轮播切换速度
        interval: 2000
        onTriggered: cirCleView.currentIndex = (cirCleView.currentIndex + 1) % cirCleView.count
    }
//******************************************

//网格排列
//******************************************
    GridViews{
        grid_height: 0.25*rootwindow.height
        grid_width: rootwindow.width
        anchors.top: cirCleView.bottom
    }

//******************************************


}
