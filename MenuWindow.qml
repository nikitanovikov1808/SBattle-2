import QtQuick 2.8
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Component {
    id: mainWindow

    Rectangle
    {
        id: background

        width: parent.width
        height: parent.height

        Image
        {
            anchors.fill: parent

            source: "source/image/background.jpg"
            fillMode: Image.Tile

            Rectangle {
                id: rectangle
                x: 393
                y: 123
                width: 150
                height: 50
                color: "#ffffff"

                Text {
                    id: text1
                    x: 42
                    y: 18
                    text: qsTr("начать игру")
                    font.pixelSize: 12
                }
            }
        }
    }

    Text
    {
        x: 225
        y: 32
        color: "#2525df"
        text: "SBattle"
        textFormat: Text.AutoText
        font.bold: true
        font.italic: false
        font.underline: true
        font.family: "Arial"
        enabled: false
        transformOrigin: Item.Center
        style: Text.Sunken
        font.weight: Font.ExtraBold
        fontSizeMode: Text.HorizontalFit
        clip: false
        font.pixelSize: 55
    }

}
