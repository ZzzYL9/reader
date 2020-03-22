QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#LIBS+=-lcurl

SOURCES += \
    background_setting.cpp \
    book_chapter.cpp \
    book_settings.cpp \
    curpage_setting.cpp \
#    fileio.cpp \
    font_setter.cpp \
#    get.cpp \
    main.cpp \
    read_view.cpp \
    reader_book.cpp \
    theme_setting.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#DISTFILES += \
DISTFILES += \
    QML/SearchBar.qml \
    common/IconButton.qml \
    common/PaperRipple.qml \
    common/TopBars.qml \
    forms/GridViews.qml \
    items/BaseTabBar.qml \
    items/SearchBar.qml \
    items/bookshelf/AddButton.qml \
    items/bookshelf/Book_ShelfItem.qml \
    items/bookshelf/readview/BookItem.qml \
    items/bookshelf/readview/ListItem.qml \
    items/bookshelf/readview/SettingButton.qml \
    items/bookshelf/readview/SettingButton1.qml \
    items/bookshelf/readview/SettingButton2.qml \
    items/bookshelf/readview/SettingButton3.qml \
    items/homepage/CircleView.qml \
    items/homepage/GridBookModel.qml \
    items/homepage/ListBookModel.qml \
    items/homepage/SearchBar.qml \
    main.qml \
    popup/BrightNess.qml \
    popup/PopupCatalog.qml \
    popup/SettingBottom.qml \
    views/AnalyzeView.qml \
    views/HomeStack.qml \
    views/HomeView.qml \
    views/HomeView/CircleView.qml \
    views/HomeView/GridViews.qml \
    views/HomeView/SortView.qml \
    views/HomeView/VideoView.qml \
    views/MineView.qml \
    views/MineView/Help.qml \
    views/MineView/LoginView.qml \
    views/MineView/MineView.qml \
    views/MineView/MyAccount.qml \
    views/MineView/MyBooks.qml \
    views/MineView/MyInfo.qml \
    views/MineView/MyNotes.qml \
    views/MineView/Setting.qml \
    views/readview/CataBottom.qml \
    views/readview/ReadView.qml

HEADERS += \
    background_setting.h \
    book_chapter.h \
    book_settings.h \
    curpage_setting.h \
#    fileio.h \
    font_setter.h \
#    get.h \
    read_view.h \
    reader_book.h \
    theme_setting.h
