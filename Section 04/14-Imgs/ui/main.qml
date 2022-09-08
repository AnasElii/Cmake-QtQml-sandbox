import QtQuick 2.15

Window {
    id: mainWindow

    visible: true
    width: 500
    height: 500

    Rectangle {
        width: mainImg.width /6
        height: mainImg.height /6
        
        color: "transparent"
        clip: true
        anchors{
            centerIn: parent
        }

        Image {            
            source: "qrc:/rec/img/profile.png"
            anchors.fill: parent
        }
        
        Image {
            id: mainImg
            source: "qrc:/rec/img/profile.png"
            visible: false
        }
    }

    //asynchronous: bool
    //autoTransform: bool
    //cache: bool
    //fillMode: enumeration
    //horizontalAlignment: enumeration
    //mipmap: bool
    //mirror: bool
    //paintedHeight: real
    //paintedWidth: real
    //progress: real
    //smooth: bool
    //source: url
    //sourceSize: QSize
    //status: enumeration
    //verticalAlignment: enumeration
    //activeFocus: bool
    //activeFocusOnTab: bool
    //anchors.alignWhenCentered: bool
    //anchors.baseline: AnchorLine
    //anchors.baselineOffset: real
    //anchors.bottom: AnchorLine
    //anchors.bottomMargin: real
    //anchors.centerIn: Item
    //anchors.fill: Item
    //anchors.horizontalCenter: AnchorLine
    //anchors.horizontalCenterOffset: real
    //anchors.left: AnchorLine
    //anchors.leftMargin: real
    //anchors.margins: real
    //anchors.right: AnchorLine
    //anchors.rightMargin: real
    //anchors.top: AnchorLine
    //anchors.topMargin: real
    //anchors.verticalCenter: AnchorLine
    //anchors.verticalCenterOffset: real
    //antialiasing: bool
    //baselineOffset: int
    //children: list<Item>
    //childrenRect.height: real
    //childrenRect.width: real
    //childrenRect.x: real
    //childrenRect.y: real
    //clip: bool
    //containmentMask: QObject*
    //data: list<Object>
    //enabled: bool
    //focus: bool
    //height: real
    //implicitHeight: real
    //implicitWidth: real
    //layer.effect: Component
    //layer.enabled: bool
    //layer.format: enumeration
    //layer.mipmap: bool
    //layer.samplerName: string
    //layer.samples: enumeration
    //layer.smooth: bool
    //layer.sourceRect: rect
    //layer.textureMirroring: enumeration
    //layer.textureSize: size
    //layer.wrapMode: enumeration
    //opacity: real
    //parent: Item
    //resources: list<Object>
    //rotation: real
    //scale: real
    //smooth: bool
    //state: string
    //states: list<State>
    //transform: list<Transform>
    //transformOrigin: enumeration
    //transitions: list<Transition>
    //visible: bool
    //visibleChildren: list<Item>
    //width: real
    //x: real
    //y: real
    //z: real
    //childAt(realx,realy)
    //forceActiveFocus()
    //forceActiveFocus(Qt: : FocusReasonreason)
    //nextItemInFocusChain(boolforward)
    //objectName: string
    Image {
    }
}
