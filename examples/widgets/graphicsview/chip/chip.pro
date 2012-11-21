RESOURCES += images.qrc

HEADERS += mainwindow.h view.h chip.h
SOURCES += main.cpp
SOURCES += mainwindow.cpp view.cpp chip.cpp

QT += widgets
!isEmpty(QT.printsupport.name): QT += printsupport
contains(QT_CONFIG, opengl):QT += opengl

build_all:!build_pass {
    CONFIG -= build_all
    CONFIG += release
}

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtbase/widgets/graphicsview/chip
sources.files = $$SOURCES $$HEADERS $$RESOURCES *.png *.pro *.html *.doc images
sources.path = $$[QT_INSTALL_EXAMPLES]/qtbase/widgets/graphicsview/chip
INSTALLS += target sources

