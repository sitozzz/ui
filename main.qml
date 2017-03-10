import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    width: 800
    height: 600

    Item {
        // set width based on given background
        width: bg.width
        height: bg.height

        Image { // nice background image
            id: bg
            source: "File:///F:/Qt/Ch4/background.png"
        }

        MouseArea {
            id: backgroundClicker
            // needs to be before the images as order matters
            // otherwise this mousearea would be before the other elements
            // and consume the mouse events
            anchors.fill: parent
            onClicked: {
                // reset our little scene
                circle.x = 84
                box.rotation = 0
                triangle.rotation = 0
                triangle.scale = 1.0
            }
        }

        ClickableImg {
            id: circle
            x: 84; y: 68
            source: "File:///F:/Qt/Ch4/circle_blue.png"
            antialiasing: true
            onClicked: {
                // increase the x-position on click
                x += 20
            }
        }

        ClickableImg {
            id: box
            x: 164; y: 68
            source: "File:///F:/Qt/Ch4/box_green.png"
            antialiasing: true
            onClicked: {
                // increase the rotation on click
                rotation += 15
            }
        }

        ClickableImg {
            id: triangle
            x: 248; y: 68
            source: "File:///F:/Qt/Ch4/triangle_red.png"
            antialiasing: true
            onClicked: {
                // several transformations
                rotation += 15
                scale += 0.05
            }
        }


}
}
