import QtQuick 2.15
import QtQuick.Window 2.12

Window{
    id: mainWIndow

    title: qsTr("Rectangle")
    visible: true
    width: 1000
    height:1000
    
    
    Rectangle {
        id: onTopRec

        anchors{
            left: parent.left
            top: parent.top
            leftMargin: 20
            topMargin: 20
        }
                        
        width: 300
        height: 300
        color: "red"
        border{
            color: "green"
            width: 7
        }        
        radius: 15
        opacity: 0.7
        antialiasing: true
        gradient:Gradient{
            GradientStop{position: 0.0; color:"#fef04a"}
            GradientStop{position: 0.5; color:"#ffb148"}
            GradientStop{position: 1.0; color:"#ff654c"}
        }
    }

    Rectangle{
        id: onBottomRec
        
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 100
            leftMargin: 100
        }
        
        width: 300
        height:200
        color: "green"
        border{
            color: "red"
            width: 7
        }
        radius: 15
        opacity: 0.3
        antialiasing: true
    }

    
}