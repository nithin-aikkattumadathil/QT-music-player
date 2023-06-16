import QtQuick
import QtQuick.Window
import QtQuick.VirtualKeyboard
import QtMultimedia
import QtQuick.Controls 2.14

Window {
    id: window
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")

    Item {
        width: 1024
        height: 600

        Image {
            id: cluster_background
            x: 0
            y: 0
            width: 1024
            height: 600
            source: "IC_BG.png"
        }
    }
    Item {
        width: 1024
        height: 600

        Image {
            id: logo
            x: 470
            y: 400
            width:100
            height: 50
            source: "PixelExpert_Logo_trim.png"
        }
    }


    MediaPlayer {
        id: playMusic2
        source: "maverick1.mp3"
        audioOutput: AudioOutput{}
    }


    Button {
        id: playArea2
        text: playMusic2.playbackState == MediaPlayer.PlayingState ? "Pause!" : "Play!"
        font.pointSize: 24
        width: 150
        height: 50
        x: 450
        y: 300
        onClicked: {
            if (playMusic2.playbackState == MediaPlayer.PlayingState)
                playMusic2.pause()
            else
                playMusic2.play()
        }
    }
}
