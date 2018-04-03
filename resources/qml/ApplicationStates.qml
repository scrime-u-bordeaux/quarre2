import QtQuick 2.0

Item {

    states: [

        State
        {
            name: "CONNECTING"
            // application logo + connection wheel
            PropertyChanges {
                target: upper_view.header
                height: root.height
            }
        },

        State
        {
            name: "CONNECTION_FAILED"
            /*PropertyChanges {
                target:
                height: root.height
            }*/
        },

        State //-------------------------------------------------------------- IDLE_STATE
        {
            name: "IDLE"
            // connection established
            // header takes the whole upper view
            // please wait until next event label
            PropertyChanges
            {
                target: upper_view
                opacity: 0.8
            }

            PropertyChanges //--------------------------- HEADER
            {
                target: upper_view.header
                height: upper_view.height
                state: "FULL_VIEW"
            }

            PropertyChanges //--------------------------- NEXT
            {
                target: upper_view.next
                x: -upper_view.width
                state: "REDUCED_VIEW"
            }

            PropertyChanges //--------------------------- CURRENT
            {
                target: upper_view.current
                x: upper_view.width
                state: "FULL_VIEW"
            }

            PropertyChanges //--------------------------- LOWER
            {
                target: lower_view
                opacity: 0.75
            }

        },

        State //-------------------------------------------------------------- INCOMING_STATE
        {
            name: "INCOMING_INTERACTION"
            // next section takes the upper ViewSection

            PropertyChanges //--------------------------- HEADER
            {
                target: upper_view.header
                height: upper_view.height * 0.1
                state: "REDUCED_VIEW"
                color: "black"
            }

            PropertyChanges //--------------------------- NEXT
            {
                target: upper_view.next
                height: upper_view.height * 0.9
                x: 0
                state: "FULL_VIEW"
            }

            PropertyChanges //--------------------------- CURRENT
            {
                target: upper_view.current
                x: upper_view.width
                y: upper_view.header.height
            }

            PropertyChanges //--------------------------- LOWER
            {
                target: lower_view
                opacity: 0.9
            }
        },

        State //-------------------------------------------------------------- ACTIVE_STATE
        {
            name: "ACTIVE_INTERACTION"

            PropertyChanges //--------------------------- HEADER
            {
                target: upper_view.header
                height: upper_view.height * 0.1
                state: "REDUCED_VIEW"
                color: "black"
            }

            PropertyChanges //--------------------------- CURRENT
            {
                target: upper_view.current
                height: upper_view.height * 0.9
                x: 0
                y: upper_view.header.height
                state: "FULL_VIEW"
            }

            PropertyChanges //--------------------------- NEXT
            {
                target: upper_view.next
                x: -upper_view.width
                state: "REDUCED_VIEW"
            }

            PropertyChanges
            {
                target: lower_view
                opacity: 0.9
            }
        },

        State //-------------------------------------------------------------- ACTIVE_INCOMING_STATE
        {
            name: "ACTIVE_AND_INCOMING_INTERACTIONS"

            PropertyChanges //---------------------------------------- HEADER
            {
                target: upper_view.header
                height: upper_view.height * 0.1
                state: "REDUCED_VIEW"
                color: "black"
            }

            PropertyChanges //---------------------------------------- NEXT
            {
                target: upper_view.next
                height: upper_view.height * 0.25
                visible: true
                state: "REDUCED_VIEW"
            }

            PropertyChanges //---------------------------------------- CURRENT
            {
                target: upper_view.current
                height: upper_view.height * 0.65
                x: 0
                y: upper_view.header.height + upper_view.next.height
                state: "REDUCED_VIEW"
            }

            PropertyChanges //---------------------------------------- LOWER
            {
                target: lower_view
                opacity: 0.9
            }
        }
    ]
}
