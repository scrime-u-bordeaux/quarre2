import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import Ossia 1.0 as Ossia

ApplicationWindow {

    id:         root
    visible:    true
    title:      qsTr("quarrè-remote")

    // --------------------------------------------------------------------------------------------------
    // note: reference is based on Samsung S7
    property real refDPI: 576
    property real refHeight: 2560
    property real refWidth: 1440

    // for the purpose of testing on macOS:
    // MacBook Pro 9.2, late 2012 (13")
    // replace width with Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    width: Screen.desktopAvailableWidth
    property real currDPI: 576

    // refer to this when calculating font sizes
    property real ratio: Math.min(height/refHeight, width/refWidth)
    property real fontRatio: Math.min(height*refDPI/(currDPI*refHeight, width*refDPI/(currDPI*refWidth)))

    FontLoader {
        id: font_lato_light
        source: "lato/Lato-Light.ttf"
    }

    /*FontLoader {
        id: font_lato_medium
        source: "lato/Lato-Medium.ttf"
    }*/

    // --------------------------------------------------------------------------------------------------

    Item { //       QUARRE APPLICATION BASE

        id:         quarre_application
        state:      "CONNECTING"
        height:     parent.height
        width:      parent.width

        property alias network: ossia_net
        property alias upper_view: upper_view

        NetworkManager
        {
            id: ossia_net
        }

        ApplicationStates
        {
            id: quarre_states
        }

        ApplicationTransitions
        {
            id: quarre_transitions
        }

        //---------------------------------------------------------------------------------------------
        Image
        {
            // note that having low & high-dpi separate files would be a good idea
            id: quarre_background
            antialiasing: true
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: "background/quarre.jpg"

            QuarreInfoView
            {
                id: upper_view
                width: width
                height: height * 0.45
                color: "#000000"
                opacity: 0.7
            }

            Rectangle
            {
                id: lower_view
                QuarreLowerDefault
                {
                    id: lower_default
                }
            }
        }
    }
}
