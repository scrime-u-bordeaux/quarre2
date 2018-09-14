import QtQuick 2.0
import Quarre 1.0
import QtQuick.Controls 1.2
import WPN114 1.0 as WPN114

Item
{
    WPN114.Node //-------------------------------------------------------------INTERACTION_INCOMING
    {
        id:     interactions_next_incoming
        path:   "/interactions/next/incoming"

        onValueReceived:
        {
            // arg0: title
            // arg1: description
            // arg2: module
            // arg3: length
            // arg4: countdown

            console.log("[INTERACTIONS] Incoming:", newValue);

            if ( newValue[0] === undefined || newValue[0] === "" ) return;
            if ( newValue[4] === "inf" ) {
                upper_view.next.count       = -1;
                upper_view.next.countdown   = "inf";
            }
            else
            {
                upper_view.next.countdown  = newValue[4];
                upper_view.next.count      = newValue[4];
            }

            upper_view.next.title           = newValue[0];
            upper_view.next.description     = newValue[1];
            upper_view.next.timer.start     ( );

            if ( quarre_application.state === "IDLE" )
            {
                quarre_application.state    = "INCOMING_INTERACTION";
                grey_animation_in.running   = true;
                module_loader.source        = "../modules/" + newValue[2] + ".qml"
                module_loader.item.enabled  = false;
            }

            else if ( quarre_application.state === "ACTIVE_INTERACTION" )
            {
                quarre_application.state = "ACTIVE_AND_INCOMING_INTERACTIONS";
                module_on_hold = newValue[2];
            }

            if ( flash.opacity > 0 ) flash.opacity = 0;

            system.vibrate(200);
        }
    }

    WPN114.Node //-------------------------------------------------------------INTERACTION_BEGIN
    {
        id:     interactions_next_begin
        path:   "/interactions/next/begin"

        onValueReceived:
        {
            // arg0: title
            // arg1: description
            // arg2: module
            // arg3: length

            console.log("[INTERACTIONS] Beginning:", newValue);

            if ( newValue[0] === undefined || newValue[0] === "" ) return;
            if ( newValue[3] === -1 )
            {
                upper_view.current.count = -1;
                upper_view.current.countdown = "inf";
            }
            else
            {
                upper_view.current.count        = newValue[3];
                upper_view.current.countdown    = newValue[3];
            }

            upper_view.current.title            = newValue[0];
            upper_view.current.description      = newValue[1];
            upper_view.current.timer.start      ( );

            upper_view.next.title         = "";
            upper_view.next.count         = 0;
            upper_view.next.timer.stop    ( );

            if ( grey_out_stack.opacity === 0.7 ) grey_animation_out.running = true;
            module_loader.item.enabled = true

            if ( quarre_application.state === "IDLE" ||
                 quarre_application.state === "INCOMING_INTERACTION" )
               quarre_application.state = "ACTIVE_INTERACTION";

            system.vibrate(300);
        }
    }

    WPN114.Node //--------------------------------------------------------------INTERACTION_NEXT_CANCEL
    {
        id:     interactions_next_cancel
        path:   "/interactions/next/cancel"

        onValueReceived:
        {
            console.log("[INTERACTIONS] Cancelling next" )

            quarre_application.state     = "IDLE";
            module_loader.source         = "../modules/Idle.qml"
            grey_animation_out.running   = true;
            upper_view.next.title        = "";
            upper_view.next.description  = "";
            upper_view.next.count        = 0;
            upper_view.next.timer.stop   ( );

            system.vibrate(50);
        }
    }

    WPN114.Node //---------------------------------------------------------INTERACTION_END
    {
        id:     interactions_current_end
        path:   "/interactions/current/end"

        onValueReceived:
        {
            if ( quarre_application.state === "INCOMING_INTERACTION")
            {
                interaction_manager.cancel_incoming();
                return;
            }

            upper_view.current.title            = "";
            upper_view.current.description      = "";
            upper_view.current.count            = 0;
            upper_view.current.timer.stop       ( );

            if ( quarre_application.state === "ACTIVE_INTERACTION" )
            {
                quarre_application.state    = "IDLE";
                module_loader.item.enabled  = false;
                module_loader.source        = "../modules/Idle.qml"
            }
            else if ( quarre_application.state === "ACTIVE_AND_INCOMING_INTERACTIONS" )
            {
                quarre_application.state = "INCOMING_INTERACTION";
                if ( module_on_hold != "" )
                {
                    module_loader.item.enabled = false;
                    module_loader.source = "../modules/" + module_on_hold + ".qml"
                    module_loader.item.enabled = false;
                    grey_animation_in.running = true;
                }
            }

            system.vibrate(100);
        }
    }

    WPN114.Node //--------------------------------------------------------- INTERACTION_FORCE
    {
        id:     interactions_current_force
        path:   "/interactions/current/force"

        onValueReceived:
        {
            if ( newValue === "" || newValue === undefined ) return;

            quarre_application.state        = "IDLE";
            upper_view.header.scene.text    = "playground";
            module_loader.source            = "../modules/" + module_name + ".qml"

            system.vibrate(100);
        }
    }
}
