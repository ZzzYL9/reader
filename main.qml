import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2
import "items"
import "items/bookshelf"
import "views"
import "views/readview"
import "."
import Reader 1.0
import Chapter 1.0
import BookShelf 1.0

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

        //首页
        HomeStack{}

//        HomeView{}


        //书架
//        BookShelfView{}
        Rectangle{
            id:bookshelf
            color: "red"
            TopBars{ id:topBars }
            GridView{
                id:bookshelfview;
                anchors.fill: parent;
//                anchors.centerIn: rootwindow
                width: parent.width;
                height: parent.height;
                cellWidth: 1/3*rootwindow.width;
                cellHeight: 1/3*(rootwindow.height-bar.height);

                model: Settings.bookShelf.books;
                delegate:  Book_ShelfItem{
                    width: bookshelfview.cellWidth;
                    height: bookshelfview.cellHeight;
                    onOpenSource: {
                        read.visible=true;
                        //顶、底部导航隐藏
                        topBars.visible=false;
                        bar.visible=false;
                        //界面高度增加
                        swipeview.height=rootwindow.height;
                        //解除禁止滑动
                        swipeview.interactive=false;
                        Settings.bookShelf.currentBook=index;
                    }
                }
            }
            ReadView{
                id:read;
                visible: false;
                width: rootwindow.width;
                height: rootwindow.height;
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
        height: 0.09*rootwindow.height
        width: rootwindow.width
        currentIndex: swipeview.currentIndex
        Component.onCompleted: {
            myModel.append({ "modelText": "首页", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/Images/guide/homepage.png", "modelSrcG": "qrc:/Images/guide/homepage_after.png"})
            myModel.append({ "modelText": "书架", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/Images/guide/books.png", "modelSrcG": "qrc:/Images/guide/books_after.png"})
            myModel.append({ "modelText": "分析", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/Images/guide/analogy.png", "modelSrcG": "qrc:/Images/guide/analogy_after.png"})
            myModel.append({ "modelText": "我的", "modelColor": "#000000", "modelColorG": "#148014", "modelSrc": "qrc:/Images/guide/me.png", "modelSrcG": "qrc:/Images/guide/me_after.png"})
        }
    }
}
